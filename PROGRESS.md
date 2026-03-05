# BreathPacer — Project Progress

## Current State
**Phase 1 (Breadboard) — COMPLETE ✅**

Full firmware running on PIC12F675. All 4 breathing modes + sleep mode working.
LEDs fading smoothly. Button cycling modes. Ready for Phase 2 (stripboard).

---

## What Works
- [x] PIC12F675 programmed via PICkit 3 clone
- [x] Green LED (inhale) fading on GP0
- [x] Red LED (exhale) fading on GP1
- [x] Blue LED (hold) steady on GP2
- [x] Button on GP3 cycling through 5 modes
- [x] All 4 breathing patterns
- [x] Off mode (mode 4) — polls GP3, LEDs off
- [x] Software PWM fade (50 steps, 100fps)

---

## Toolchain

### Software
| Tool | Version | Location |
|------|---------|----------|
| MPLAB X IDE | v6.30 | `/Applications/microchip/mplabx/v6.30/` |
| MPLAB X IDE (for PICkit3) | v5.45 | `/Applications/microchip/mplabx/v5.45/` |
| XC8 Compiler | v3.10 | `/Applications/microchip/xc8/v3.10/` |
| MPLAB IPE | v5.45 | Used for programming |

### Compile Command
```bash
/Applications/microchip/xc8/v3.10/bin/xc8-cc \
  -mcpu=PIC12F675 \
  -mdfp="/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8" \
  main.c -o dist/BreathPacer.elf
```

### Flash Command (GUI)
1. Open MPLAB IPE v5.45 with sudo:
   ```bash
   sudo /Applications/microchip/mplabx/v5.45/mplab_platform/mplab_ipe/bin/ipecmd.sh ...
   ```
   Or open app and use GUI.
2. Power Settings → **5V** (required for flash write, even though chip runs at 3V)
3. Load `BreathPacer.X/dist/BreathPacer.hex`
4. Program

---

## Hard-Won Lessons

### MPLAB X v6.30 dropped PICkit 3 support
Use **MPLAB IPE v5.45** for programming. v6.x has no PICkit 3 driver at all.

### PIC12F675 needs 5V VDD during programming
Flash write requires VDD = 4.5–5.5V even though the chip operates at 2–5.5V.
Programming at 3.3V: erase succeeds, write silently fails (reads back 0x3FFF).

### Disconnect LEDs from GP0/GP1 during programming
Green/Red LEDs on PGD/PGC clamp the ICSP lines below logic-high threshold (~2.1V vs 2.6V required). Remove those two wires before flashing, reconnect after.

### PICkit 3 clone (DollaTek) quirks
- Shipped with blank firmware (v00.00.00) — MPLAB IPE v5.45 updated it to v01.56.07 automatically
- Required a specific USB port to get libusb working on macOS
- Needs `sudo` to access USB HID on macOS (libusb permissions)

### ANSEL = 0x00 is critical
PIC12F675 boots with GP0–GP3 as analog inputs by default.
Without `ANSEL = 0x00`, GPIO writes appear to do nothing.

### MCLRE = OFF frees pin 4 as button input
With MCLRE = ON (default), pin 4 is a reset pin.
With MCLRE = OFF, pin 4 becomes GP3 — the only available button input.
GP3 is input-only (can never be output).

---

## Breadboard Wiring

```
        ┌──────────┐
VDD ────┤1        8├──── GND
 GP5 ───┤2        7├──── GP0 → [100Ω] → Green LED → GND
 GP4 ───┤3        6├──── GP1 → [100Ω] → Red LED   → GND
MCLR ───┤4        5├──── GP2 → [100Ω] → Blue LED  → GND
        └──────────┘
```

**Button on GP3 (pin 4):**
```
VDD ──[20kΩ]──┬── GP3 (pin 4)
              │
           [button]
              │
             GND
```

**PICkit 3 ICSP (remove after programming):**
```
PICkit3 pin 1 (▲) → PIC pin 4  (MCLR/VPP)
PICkit3 pin 2     → PIC pin 1  (VDD)
PICkit3 pin 3     → PIC pin 8  (GND)
PICkit3 pin 4     → PIC pin 7  (GP0/PGD)  ← disconnect LED here first
PICkit3 pin 5     → PIC pin 6  (GP1/PGC)  ← disconnect LED here first
```

---

## Firmware Summary

**File:** `BreathPacer.X/main.c`
**Flash used:** 490 / 1024 words (47.9%)
**RAM used:** 25 / 64 bytes (39.1%)

### Modes
| Mode | Pattern | Purpose |
|------|---------|---------|
| 0 | Inhale 4s → Exhale 4s | Equal breathing, calm focus |
| 1 | Inhale 6s → Exhale 6s | Coherent breathing, HRV/vagal tone |
| 2 | Inhale 4s → Hold 4s → Exhale 4s → Hold 4s | Box breathing, stress regulation |
| 3 | Inhale 4s → Hold 7s → Exhale 8s | 4-7-8, sleep/anxiety relief |
| 4 | Off | Sleep mode (~1µA), button wakes |

### Key Functions
```
pwm_frame(led, duty)     — 10ms software PWM frame, returns 1 on button press
fade_led(led, secs)      — fades 0→max→0 over secs seconds
hold_led(led, secs)      — holds full brightness for secs seconds
breathe(in, h1, out, h2) — one complete breath cycle
enter_sleep()            — IOC sleep, GP3 change wakes chip
```

### Timing
- PWM: 50 steps × 200µs = 10ms/frame = 100fps
- Frames per brightness step = duration_sec (clean integer math)
- Button debounce: 3 consecutive frames = 30ms

---

## Known Limitations
- Off mode uses polling (chip keeps running) — not true sleep (~1µA)
- IOC wake from sleep didn't work on breadboard — needs investigation for Phase 3 PCB
- True sleep important for CR2032 battery life target

## Next Steps (Phase 2 — Stripboard)

- [ ] Move from breadboard to stripboard
- [ ] Tighter layout, validate timing with oscilloscope
- [ ] Confirm battery life estimate with CR2032
- [ ] Consider adding decoupling cap (100nF) on VDD pin

## Next Steps (Phase 3 — PCB)

- [ ] Design in EasyEDA Pro or Flux.ai
- [ ] Target size ~35mm × 20mm
- [ ] Expose ICSP pads (5 pads)
- [ ] Lanyard hole
- [ ] Order from JLCPCB (~£5 for 5 boards)
