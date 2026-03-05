# BreathPacer — Breadboard Connections

## PIC12F675 Pinout (PDIP-8, notch at top-left)

```
        ┌──────────┐
VDD ────┤1        8├──── GND
 GP5 ───┤2        7├──── GP0 → [100Ω] → Green LED → GND
 GP4 ───┤3        6├──── GP1 → [100Ω] → Red LED   → GND
MCLR ───┤4        5├──── GP2 → [100Ω] → Blue LED  → GND
        └──────────┘
```

## Full Connection List

### Power
| From        | To          | Notes              |
|-------------|-------------|--------------------|
| 3V supply + | PIC pin 1   | VDD                |
| 3V supply − | PIC pin 8   | GND                |

### LEDs (disconnect from GP0/GP1 during programming)
| PIC Pin | GPIO | Component              | To  |
|---------|------|------------------------|-----|
| Pin 7   | GP0  | 100Ω → Green LED anode | GND |
| Pin 6   | GP1  | 100Ω → Red LED anode   | GND |
| Pin 5   | GP2  | 100Ω → Blue LED anode  | GND |

LED polarity: **long leg = anode (+)**, short leg = cathode (−)

### Button
Pin 4 is labeled MCLR/GP3. With `MCLRE = OFF` in firmware, it becomes GP3 (input only).

| From      | To        | Component | Notes                        |
|-----------|-----------|-----------|------------------------------|
| VDD       | PIC pin 4 | 20kΩ      | Pull-up resistor             |
| PIC pin 4 | GND       | Button    | Active low (press = GND)     |

```
VDD ──[20kΩ]──┬── GP3/MCLR (PIC pin 4)
              │
           [button]
              │
             GND
```

### PICkit 3 ICSP (programming only — remove after flashing)
| PICkit 3 Pin | Label    | PIC Pin       |
|--------------|----------|---------------|
| 1 (▲)        | MCLR/VPP | Pin 4 (MCLR)  |
| 2            | VDD      | Pin 1 (VDD)   |
| 3            | GND      | Pin 8 (GND)   |
| 4            | PGD      | Pin 7 (GP0)   |
| 5            | PGC      | Pin 6 (GP1)   |

> Pin 1 on PICkit 3 is marked with a triangle (▲) on the PCB.

---

## Programming Notes
- Flash at **5V** (PICkit 3 power settings in MPLAB IPE v5.45)
- Disconnect GP0 and GP1 LED wires before programming
- Run at **3V** after programming (or CR2032 coin cell)
- Use **MPLAB IPE v5.45** — v6.x dropped PICkit 3 support

## Firmware Modes (button cycles through)
| Press | Mode            | Pattern                          |
|-------|-----------------|----------------------------------|
| 0     | 4-4 Equal       | Green 4s → Red 4s                |
| 1     | 6-6 Coherent    | Green 6s → Red 6s                |
| 2     | Box Breathing   | Green 4s → Blue 4s → Red 4s → Blue 4s |
| 3     | 4-7-8 Relax     | Green 4s → Blue 7s → Red 8s     |
| 4     | Off / Sleep     | All LEDs off, button wakes       |

LEDs fade in and out smoothly (not on/off) to guide breathing naturally.
