[🇫🇷 Français](README.fr.md) | 🇬🇧 **English**

# Heating 2Z — OLED display kit (option 2)

OLED **I2C** display PCB kit for the [2-zone ESP32-C6 heating controller](https://github.com/Papymakers/esp32-heating-2z).
A second display option, alternative to the [TM1637 + LED bargraph kit](https://github.com/Papymakers/heating-2z-display-board).

Made of **2 PCBs + 1 FLEX-PCB 8-track ribbon**, mounted in a **6-module DIN rail** enclosure.

![Front panel](hardware/pcb/pcb_front_panel.png)

## A near-universal interface

The 8-pin connector carries, at the same time, the **TM1637** signals (CLK/DIO),
the **I2C** bus (SDA/SCL), two **switches** and the power supply. The same front
panel board can therefore host:

- a **0.96" SSD1306 I2C OLED** display (this kit),
- or a 4-digit **TM1637** display (option 1 kit),

and it fits **most 6-module DIN rail assemblies**: heating controller, clock,
thermostat, monitoring… You only need to route the 8 signals on the main board.

## Kit contents

| Board | Role |
|-------|------|
| **Front panel** (no traces) | Mechanical face plate: OLED window + 2 button holes |
| **Display / switches board** (H-H-C V4 front panel) | OLED holder (4-pin header), 2 tactile switches, ZIF connector, 8-pin header |
| **FLEX-PCB 8-track ribbon** | Flexible link main board ↔ display board, 2.54 mm pitch — see [`flex-pcb-8-tracks-254`](https://github.com/Papymakers/flex-pcb-8-tracks-254) |

## Bill of materials (BOM) — connectors and ordering

All references are **manufacturer part numbers**, available from **Mouser**.

| Ref | Component | Manufacturer | Part number | Mouser P/N | Qty |
|-----|-----------|--------------|-------------|------------|-----|
| J-OLED | Female header, 4 contacts, 2.54 mm, right-angle, gold (White Lite BG302 series) | GCT | **BG302&#8209;04&#8209;A&#8209;L&#8209;G** | 640&#8209;BG302&#8209;04&#8209;A&#8209;L&#8209;G | 1 |
| J-ZIF | FFC ZIF-LINE connector, 8 positions, 2.54 mm (.100") pitch, through-hole | TE Connectivity | **487925&#8209;1** | 571&#8209;487925&#8209;1 | 1 or 2* |
| SW1, SW2 | Tactile switch 6×6 mm, projected plunger, B3F series | Omron | **B3F&#8209;3150** | 653&#8209;B3F&#8209;3150 | 2 |
| — | Round black keycap Ø6 mm for B3F projected plunger | Omron | **B32&#8209;2010** | 653&#8209;B32&#8209;2010 | 2 |
| U-DISP | OLED module 0.96" SSD1306, I2C, 4 pins (GND/VCC/SCL/SDA) | generic | — | — | 1 |

\* 2 ZIF connectors if the main board also receives the ribbon via ZIF (one at each end).

## 8-pin connector (H1)

Header **KH-2.54PH180-1X8P-L11.5** (1×8, 2.54 mm pitch) — signals carried by the ribbon:

| Signal | Function |
|--------|----------|
| +3V3 | Display supply + pull-ups |
| CLK | TM1637 (option 1) |
| DIO | TM1637 (option 1) |
| SDA | OLED I2C (option 2) |
| SCL | OLED I2C (option 2) |
| SW1 | Zone 1 button |
| SW2 | Zone 2 button |
| GND | Ground |

> The exact pin order is the one from the EasyEDA rev 2.0 schematic
> (`hardware/schematic/schematic_oled_display_board.png`).

## Schematic

![Schematic](hardware/schematic/schematic_oled_display_board.png)

*heating-2z-OLED-display-board — rev 2.0 — 2026-07-05 — EasyEDA*

## Hardware documentation

See [`hardware/README.md`](hardware/README.md) for the detail of the boards,
the FLEX ribbon and the assembly.

## Enclosure

DIN rail **6 modules** (105 mm) — same as the option 1 kit.

## Ordering boards

Gerber files and EasyEDA sources are not published: the PCBs (bare, kit or
assembled) are sold on [papymakers.com](https://papymakers.com).

| Option | Contents | Indicative price |
|--------|----------|------------------|
| **OLED kit** | 2 PCBs (front panel + display/switches board) + FLEX 8-track ribbon | €15 |

*Shipping included. Ships from France.*

## Related projects

- [`esp32-heating-2z`](https://github.com/Papymakers/esp32-heating-2z) — 2-zone ESP32-C6 heating controller (main board)
- [`heating-2z-display-board`](https://github.com/Papymakers/heating-2z-display-board) — option 1 display kit: TM1637 + LED bargraph
- [`flex-pcb-8-tracks-254`](https://github.com/Papymakers/flex-pcb-8-tracks-254) — FLEX-PCB 8-track ribbon used by this kit

## License

Documentation published under the **CC BY-SA 4.0** license.

---

**Papy Makers** — [papymakers.com](https://papymakers.com) — Normandy, France
