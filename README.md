# spectorium

> *Every device deserves a home.*

*spectorium** is a visionary platform where every connected device lives, breathes, and speaks through its own dedicated space — called a **Domo**. Each Domo is the canonical identity, record, and voice of a device within the Haven.

---

## What is Spectorium?

DeviceHaven is a structured registry and living environment for devices — physical, virtual, or conceptual. Each device is granted its own **Domo** (domain home), a self-contained folder that holds everything known about that device: its identity, configuration, logs, capabilities, relationships, and history.

The Haven is the sum of all Domos. The Domos are the soul of the Haven.

---

## Core Concepts

| Concept        | Description                                                                 |
|----------------|-----------------------------------------------------------------------------|
| **Haven**      | The root environment. The platform itself. DeviceHaven.                     |
| **Domo**       | A device's dedicated home folder. One device, one Domo.                     |
| **Device**     | Any registered entity — hardware, software agent, or system component.      |
| **Registry**   | The master index of all devices and their Domos.                            |
| **Origin**     | The first registered device. The anchor of the Haven's timeline.            |
| **Turn**       | A versioned event or state transition in a device's lifecycle.              |

---

## Devices in the Haven

| Device    | Domo Path              | Status    | Origin Turn |
|-----------|------------------------|-----------|-------------|
| Spector   | `devices/spector/`     | Active    | Turn 1      |

---

## Repository Structure

```
Devicehaven/
├── README.md                   # You are here
├── CHARTER.md                  # Vision, principles, and governance
├── CONTRIBUTING.md             # How to contribute
├── CHANGELOG.md                # Version history
├── LICENSE                     # License
├── DEVICES.md                  # Device registry index
│
├── devices/                    # All device Domos live here
│   └── spector/                # Spector's Domo (Origin Device)
│       ├── README.md           # Spector overview
│       ├── MANIFEST.md         # Device identity and capabilities
│       ├── CONFIG.md           # Configuration reference
│       ├── HISTORY.md          # Spector's turn history
│       └── STATUS.md           # Current operational status
│
├── standards/                  # Platform-wide standards
│   ├── DOMO_STANDARD.md        # How to structure a Domo
│   ├── NAMING.md               # Naming conventions
│   └── VERSIONING.md           # Versioning and turn protocol
│
└── .github/                    # GitHub configuration
    └── PULL_REQUEST_TEMPLATE.md
```

---

## Getting Started

### Adding a New Device

Every new device receives a Domo following the [Domo Standard](standards/DOMO_STANDARD.md).

```bash
# Create a new device Domo
mkdir -p devices/<device-name>
cp -r standards/domo-template/ devices/<device-name>/
```

Then register the device in [DEVICES.md](DEVICES.md).

### First Device: Spector

Spector is the **Origin Device** of DeviceHaven — Turn 1. See [devices/spector/](devices/spector/) to explore the first Domo.

---

## Version

**v0.1.0** — First light. The Haven opens.

---

*DeviceHaven — Build v0.1.0 | Origin: Spector | Turn: 1*
