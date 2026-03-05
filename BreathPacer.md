# LED Breath Pacer Keychain — Project Spec

## Overview

A minimal, wearable breathing pacer in keychain form factor. One button, a few LEDs, and a coin cell battery. No phone, no app, no screen — just light guiding your breath. Designed to be carried everywhere and used anywhere.

---

## Goals

- Guide the user through breathing patterns using LED colour and fade
- Single button interaction — dead simple to use
- Runs on a CR2032 coin cell (months of battery life)
- Small enough to be a keychain (PCB ~50p coin size)
- Manufacturable for under £5 BOM at small scale

---

## Hardware

### Microcontroller
- **PIC12F675-I/P** (PDIP-8, through-hole)
  - 8 pins, internal oscillator (no external crystal needed)
  - Runs at 3V directly from CR2032
  - ~£1.46 each (Farnell)

### Components
| Component | Value / Part | Notes |
|-----------|-------------|-------|
| MCU | PIC12F675-I/P | Main brain |
| LED — Inhale | Green 3mm or 5mm | Brightens during inhale |
| LED — Exhale | Red 3mm or 5mm | Brightens during exhale |
| LED — Hold | Blue 3mm or 5mm | On during hold phases |
| Resistors | 100Ω (LEDs), 10kΩ (button pull-up) | Standard through-hole |
| Capacitor | 100nF ceramic | Decoupling on VDD pin |
| Button | 6×6mm tactile | Mode cycle |
| Battery holder | TE Connectivity BAT-HLD-001-THM-TR | CR2032, through-hole |
| Battery | CR2032 | 3V coin cell |

### Pin Mapping (PIC12F675)
```
GP0 — Green LED (inhale)
GP1 — Red LED (exhale)
GP2 — Blue LED (hold)
GP3 — Button input (with 10kΩ pull-up to VDD)
GP4 — (spare)
GP5 — (spare)
VDD — 3V from CR2032
VSS — GND
```

---

## Programmer & Toolchain

| Tool | Details |
|------|---------|
| Programmer | DollaTek PICkit3 clone (Amazon, £14.99) |
| IDE | MPLAB X IDE (free, microchip.com) |
| Compiler | XC8 (free tier, microchip.com) |
| ICSP Pins | VDD, GND, MCLR, PGC, PGD exposed as pads on final PCB |

---

## Breathing Modes

Button press cycles through modes. LED colour indicates phase.

### Mode 0 — 4-4 Equal Breathing
```
Inhale 4s (green) → Exhale 4s (red) → repeat
```

### Mode 1 — 6-6 Coherent Breathing
```
Inhale 6s (green) → Exhale 6s (red) → repeat
```
*~5 breaths/min, optimal for HRV and vagal tone*

### Mode 2 — 4-4-4-4 Box Breathing
```
Inhale 4s (green) → Hold 4s (blue) → Exhale 4s (red) → Hold 4s (blue) → repeat
```
*Navy SEAL / stress regulation technique*

### Mode 3 — 4-7-8 Relaxation
```
Inhale 4s (green) → Hold 7s (blue) → Exhale 8s (red) → repeat
```
*Dr. Andrew Weil method, good for sleep/anxiety*

### Mode 4 — OFF
```
All LEDs off, MCU enters sleep mode
```

---

## Firmware Design

### Key Features
- **Software PWM fade** — LEDs fade in/out smoothly over the breath duration rather than switching on/off. Makes the pacing feel natural and intuitive.
- **Timer0 for 1-second ticks** — Internal oscillator + prescaler gives accurate timing without external crystal
- **Button debounce** — Software debounce on button press to cycle modes
- **Sleep mode** — MCU sleeps between button presses, wakes on interrupt. Extends CR2032 life to months.

### Timing Approach
```c
// Timer0 configured for ~1s tick
// Prescaler 1:256 on 4MHz internal oscillator
// Software PWM loop runs within each second for LED fade
void breathe(uint8_t inhale, uint8_t hold1, uint8_t exhale, uint8_t hold2) {
    fade_led(LED_GREEN, inhale);   // Inhale — green fades up then down
    hold_led(LED_BLUE, hold1);     // Hold   — blue steady
    fade_led(LED_RED, exhale);     // Exhale — red fades up then down  
    hold_led(LED_BLUE, hold2);     // Hold   — blue steady
}
```

### Power Budget
- LEDs at ~2mA average (low brightness, PWM dimmed)
- MCU at ~1mA active, ~1µA sleep
- CR2032 capacity ~220mAh
- Estimated runtime: **80-100 hours active use**, much longer with frequent sleep

---

## Prototype Plan

### Phase 1 — Breadboard
- Wire up PIC12F675 on breadboard
- Connect 3 LEDs with 100Ω resistors
- Connect button with 10kΩ pull-up
- Connect CR2032 via DIY wire contacts
- Flash firmware via PICkit3 ICSP header (5 jumper wires)

### Phase 2 — Stripboard
- Tighten up layout
- Validate timing with oscilloscope (FNIRSI-1014D)
- Confirm battery life estimate

### Phase 3 — PCB
- Design in EasyEDA Pro or Flux.ai
- Rounded corners, lanyard hole
- Target size: ~35mm × 20mm (50p coin footprint)
- Expose ICSP pads for programming
- Order from JLCPCB (~£5 for 5 boards)
- Self-solder components

---

## Future Considerations
- Add a second button for tempo adjustment
- Vibration motor instead of / alongside LEDs for eyes-closed use
- Rechargeable LiPo + USB-C (increases size but better UX)
- Custom enclosure via 3D printing (Bambu P1S) or injection moulding at scale
- Potential product positioning: standalone breathing pacer that complements Passana