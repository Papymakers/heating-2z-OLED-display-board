🇫🇷 **Français** | [🇬🇧 English](README.md)

# Hardware — Kit d'affichage OLED 2 zones

## Vue d'ensemble

Le kit se compose de deux PCB rigides reliés à la carte principale par une nappe FLEX-PCB 8 pistes, le tout monté en boîtier DIN rail 6 modules (105 mm).

```
Carte principale (esp32-heating-2z)
        │
        │  Nappe FLEX-PCB 8 pistes, pas 2.54 mm
        │  (ZIF TE 487925-1 à chaque extrémité)
        ▼
Carte afficheur / switches (H-H-C V4 front panel)
        │  Embase GCT BG302-04-A-L-G (OLED)
        │  2 × Omron B3F-3150 + capuchons B32-2010
        ▼
Façade (front panel, sans pistes)
```

## 1. Façade (front panel)

![PCB façade](pcb/pcb_front_panel.png)

- PCB **purement mécanique**, sans pistes (« no traces »)
- Fenêtre rectangulaire pour l'afficheur OLED 0.96"
- 2 perçages pour le passage des capuchons de switches
- Sérigraphie PapyMakers 06/2026

## 2. Carte afficheur / switches (H-H-C V4 front panel)

![PCB afficheur](pcb/pcb_display_switches_board.png)

Composants :

| Repère | Composant | Référence |
|--------|-----------|-----------|
| J-OLED | Embase femelle 4 contacts 2.54 mm coudée, dorée | GCT **BG302-04-A-L-G** |
| J-ZIF | Connecteur FFC ZIF-LINE 8 positions, 2.54 mm, traversant | TE Connectivity **487925-1** |
| SW1, SW2 | Switch tactile 6×6 mm poussoir saillant | Omron **B3F-3150** |
| — | Capuchon rond noir Ø6 mm | Omron **B32-2010** |
| H1 | Header 1×8, 2.54 mm, L11.5 | KH-2.54PH180-1X8P-L11.5 |

L'afficheur OLED (module SSD1306 4 broches GND/VCC/SCL/SDA) s'enfiche
dans l'embase BG302 coudée : il se présente parallèle au PCB, affleurant
la fenêtre de la façade.

### Montage des capuchons

> ⚠️ Monter les capuchons **B32-2010 après soudure** des switches —
> la chaleur de soudure peut les déformer (recommandation Omron).

## 3. Nappe FLEX-PCB 8 pistes

![Nappe FLEX](flex-pcb/flex_pcb_8_pistes.png)

- **8 pistes**, pas **2.54 mm** (.100"), compatible ZIF-LINE TE 487925-1
- Extrémités renforcées, contacts exposés sur une face
- Liaison souple carte principale ↔ carte afficheur : autorise le
  positionnement de la façade indépendamment de la carte principale
  dans le boîtier DIN

Signaux transportés : +3V3, CLK, DIO, SDA, SCL, SW1, SW2, GND
(voir pinout dans le [README principal](../README.fr.md)).

Dépôt dédié : [`flex-pcb-8-tracks-254`](https://github.com/Papymakers/flex-pcb-8-tracks-254)
(dimensions 71.1 × 22.9 mm, simple face).

## Schéma

![Schéma](schematic/schematic_oled_display_board.png)

*heating-2z-OLED-display-board — rev 2.0 — 2026-07-05 — dessin EasyEDA, fabrication JLCPCB*

## Universalité

La même paire façade + carte afficheur convient à la plupart des montages
en boîtier DIN 6 modules : le connecteur 8 broches route simultanément
TM1637 (CLK/DIO), I2C (SDA/SCL) et deux switches. Seule la carte
principale du projet hôte doit exposer le connecteur ZIF ou un header
2.54 mm compatible.

## Boîtier

DIN rail **6 modules** (105 mm).
