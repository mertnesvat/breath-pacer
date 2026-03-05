/*
 * BreathPacer — PIC12F675
 * Firmware v1.0
 *
 * GP0 — Green LED  (inhale)
 * GP1 — Red LED    (exhale)
 * GP2 — Blue LED   (hold)
 * GP3 — Button     (active low, 10k pull-up to VDD)
 *
 * Button cycles through modes:
 *   0 → 4-4 equal breathing
 *   1 → 6-6 coherent breathing
 *   2 → 4-4-4-4 box breathing
 *   3 → 4-7-8 relaxation
 *   4 → OFF (sleep, button wakes)
 */

#include <xc.h>

#pragma config FOSC  = INTRCIO   // Internal oscillator, GP4/GP5 as I/O
#pragma config WDTE  = OFF       // Watchdog off
#pragma config PWRTE = ON        // Power-up timer on
#pragma config MCLRE = OFF       // GP3 = digital input (button), not MCLR
#pragma config BOREN = ON        // Brown-out reset on
#pragma config CP    = OFF
#pragma config CPD   = OFF

#define _XTAL_FREQ  4000000

#define LED_GREEN  (1 << 0)   // GP0
#define LED_RED    (1 << 1)   // GP1
#define LED_BLUE   (1 << 2)   // GP2
#define BTN        GP3        // Active low — needs 10kΩ pull-up to VDD

// PWM: 50 steps × 200µs = 10ms per frame = 100 frames/sec
#define PWM_MAX  50

static uint8_t btn_count = 0;

// One ~10ms software PWM frame at duty (0..PWM_MAX).
// Returns 1 when button held 3 consecutive frames (~30ms debounce).
static uint8_t pwm_frame(uint8_t led, uint8_t duty) {
    for (uint8_t i = 0; i < PWM_MAX; i++) {
        GPIO = (i < duty) ? led : 0x00;
        __delay_us(200);
    }
    GPIO = 0x00;

    if (!BTN) {
        if (++btn_count >= 3) { btn_count = 0; return 1; }
    } else {
        btn_count = 0;
    }
    return 0;
}

// Fade LED: 0 → full → 0 over duration_sec seconds.
// Timing: PWM_MAX × 2 × duration_sec × 10ms = duration_sec × 1000ms
// Returns 1 on button press.
static uint8_t fade_led(uint8_t led, uint8_t duration_sec) {
    uint8_t fps = duration_sec;  // frames held per brightness step

    for (uint8_t duty = 0; duty < PWM_MAX; duty++)
        for (uint8_t f = 0; f < fps; f++)
            if (pwm_frame(led, duty)) return 1;

    for (uint8_t duty = PWM_MAX; duty > 0; duty--)
        for (uint8_t f = 0; f < fps; f++)
            if (pwm_frame(led, duty - 1)) return 1;

    return 0;
}

// Hold LED at full brightness for duration_sec seconds.
// Returns 1 on button press.
static uint8_t hold_led(uint8_t led, uint8_t duration_sec) {
    uint16_t frames = (uint16_t)duration_sec * 100;
    for (uint16_t f = 0; f < frames; f++)
        if (pwm_frame(led, PWM_MAX)) return 1;
    return 0;
}

// One complete breath cycle. Returns 1 on button press.
static uint8_t breathe(uint8_t inhale, uint8_t hold1,
                        uint8_t exhale, uint8_t hold2) {
    if (fade_led(LED_GREEN, inhale))         return 1;
    if (hold1 && hold_led(LED_BLUE, hold1))  return 1;
    if (fade_led(LED_RED,   exhale))         return 1;
    if (hold2 && hold_led(LED_BLUE, hold2))  return 1;
    return 0;
}

// Sleep until button press (IOC on GP3 wakes chip).
static void enter_sleep(void) {
    GPIO = 0x00;
    GPIF = 0;
    GPIE = 1;
    SLEEP();
    NOP();
    GPIE = 0;
    GPIF = 0;
}

void main(void) {
    ANSEL  = 0x00;          // All pins digital (critical — boots as analog)
    TRISIO = 0b00001000;    // GP3 input (button), GP0/1/2 output (LEDs)
    GPIO   = 0x00;

    uint8_t mode = 0;

    while (1) {
        switch (mode) {
            case 0: while (!breathe(4, 0, 4, 0)); break;  // 4-4 equal
            case 1: while (!breathe(6, 0, 6, 0)); break;  // 6-6 coherent
            case 2: while (!breathe(4, 4, 4, 4)); break;  // Box breathing
            case 3: while (!breathe(4, 7, 8, 0)); break;  // 4-7-8 relaxation
            case 4: enter_sleep();              break;     // Off / sleep
        }

        // Wait for button release before advancing mode
        while (!BTN);
        __delay_ms(50);
        mode = (mode + 1) % 5;
    }
}
