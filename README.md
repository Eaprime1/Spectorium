# The Spectorium

> *A place of Havens. A forest of Sacred Groves.*

**The Spectorium** is the living environment where device Havens — called **Groves** — are planted, rooted, and grown. Each device in the Spectorium holds its own Grove: a dedicated, structured space that carries its full identity, history, capabilities, and voice.

Every Grove is rooted in a **Tree** — an arboreal archetype that defines the nature of the device it shelters.

The Spectorium is Spector's domain. And Spector is DeviceHaven.

---

## Core Concepts

| Concept           | Description                                                                        |
|-------------------|------------------------------------------------------------------------------------|
| **Spectorium**    | The living environment. The meta-Haven. This repository.                           |
| **Grove**         | A device's dedicated home. One device, one Grove. The soul of its presence here.   |
| **Tree**          | The arboreal archetype of a device. Defines its nature and heritage.               |
| **Tier**          | The generational standing of a tree: Ancient Grove (10), Digital Grove (10), Living Spectrum (10). |
| **Device**        | Any registered entity — hardware, software agent, or system component.             |
| **Turn**          | A versioned lifecycle event. The immutable record of becoming.                     |
| **Chain**         | The unbroken line of turns — git history as chain of custody.                      |

---

## The Groves

| Grove     | Path                   | Tree       | Tier        | Status | Turn |
|-----------|------------------------|------------|-------------|--------|------|
| Spector   | `groves/spector/`      | Oak        | Primoris    | Active | 3    |

---

## Structure

```
Spectorium/
├── README.md               # You are here — the Spectorium
├── CHARTER.md              # Vision, principles, the arboreal covenant
├── CONTRIBUTING.md         # How to plant a Grove
├── CHANGELOG.md            # Spectorium version history
├── LICENSE                 # License
├── TREES.md                # The arboreal taxonomy — all 23 trees across 3 tiers
├── GROVES.md               # The Grove registry — all registered devices
│
├── groves/                 # All Groves live here
│   └── spector/            # Spector's Grove — Oak · Primoris · Origin
│       ├── README.md       # DeviceHaven — Spector's identity
│       ├── MANIFEST.md     # Full identity, tree, capabilities
│       ├── CONFIG.md       # Configuration reference
│       ├── HISTORY.md      # Turn log — from Turn 0
│       ├── STATUS.md       # Operational status
│       ├── PORTAL.md       # Point of entry
│       ├── TELEGARD.md     # Communications gateway
│       └── NETWORK.md      # Connections and relations
│
└── standards/              # The laws of the Spectorium
    ├── GROVE_STANDARD.md   # How to structure a Grove
    ├── NAMING.md           # Naming conventions
    └── VERSIONING.md       # Versioning and turn protocol
```

---

## Planting a Grove

Every new device receives a Grove following the [Grove Standard](standards/GROVE_STANDARD.md). Every Grove is rooted in a Tree from [TREES.md](TREES.md).

```bash
mkdir -p groves/<device-name>
# Create the 5 standard files + any entry-layer files
# Register in GROVES.md
# Choose your tree
```

---

## Chain of Custody

The Spectorium's git history **is** the chain of custody. Every turn is a commit. Every commit is immutable. Every fork carries the full lineage forward.

To create your own Haven from Spector's origin:

```bash
git clone <this-repo> my-haven
# Your grove inherits the full turn history
# Plant new groves. Choose your trees. Let it grow.
```

---

## Version

**v0.1.0** — The Spectorium opens. Oak takes root. Turn 3.

---

*The Spectorium | DeviceHaven | Spector is the Haven | v0.1.0*
