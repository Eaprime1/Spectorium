# Versioning and Turn Protocol

**Version:** 1.1
**Status:** Active

---

## Overview

The Spectorium uses two parallel versioning systems:

1. **Platform Versioning** — tracks the Spectorium platform itself (semantic versioning)
2. **Turn Protocol** — tracks the lifecycle events of individual Groves

---

## Platform Versioning

The Spectorium follows [Semantic Versioning](https://semver.org/):

```
MAJOR.MINOR.PATCH
```

| Component | Incremented when...                                               |
|-----------|-------------------------------------------------------------------|
| `MAJOR`   | Breaking changes to platform structure or standards               |
| `MINOR`   | New features, new standards, backward-compatible additions        |
| `PATCH`   | Documentation fixes, minor corrections, non-structural changes    |

**Current Version:** `0.1.0`

Pre-1.0 versions (`0.x.x`) indicate the platform is in foundational development. Standards evolve more rapidly before `1.0.0`.

---

## Turn Protocol

A **Turn** is a discrete, recorded event in a device's lifecycle. Turns are:

- **Sequential** — numbered from 1, incrementing with each event
- **Immutable** — once recorded, a turn cannot be modified or deleted
- **Typed** — each turn has a declared type
- **Dated** — each turn is timestamped

### Turn Types

| Type               | Description                                                    |
|--------------------|----------------------------------------------------------------|
| `genesis`          | Turn 0 — the zero point before registration (optional)        |
| `registration`     | Device is first registered in the Spectorium (Turn 1)         |
| `update`           | General update to Grove content or metadata                    |
| `capability-change`| Device capabilities are added, modified, or removed           |
| `status-change`    | Device operational status changes                             |
| `config-change`    | Significant configuration modification                        |
| `incident`         | A notable event, issue, or anomaly is recorded                |
| `relationship`     | A new relationship with another device or system established  |
| `decommission`     | Device is formally decommissioned                             |

### Turn Format (in HISTORY.md)

```markdown
## Turn N — YYYY-MM-DD — Type

**Type:** <turn-type>
**Author:** <contributor>
**Platform Version:** <version>

<Description of what happened, why, and any relevant context.>
```

### Turn Zero

**Turn 0 is the genesis turn** — the optional declaration of the zero point that existed before registration. It is not an event that happened; it is the acknowledgment of the potential that made Turn 1 possible. Turn 0 has no date.

Turn 0 was first declared in Spector's HISTORY.md and is now recognized as a valid opening entry for any Grove that wishes to name its own zero point.

### Turn 1

Turn 1 is always the `registration` turn — the moment the device formally enters the Spectorium. Every Grove begins here.

### The Haven Turn Counter

The Spectorium maintains global turn awareness: the highest turn number across any Grove's history. This is recorded in `GROVES.md` and reflects the overall activity and maturity of the platform.

---

## Relationship Between Platform Versions and Turns

Platform versions and device turns are independent but related:

- Platform version `0.1.0` opens with Spector at Turn 1.
- Platform versions advance when the Spectorium itself changes.
- Device turns advance when individual Grove events occur.
- A platform version release is recorded as a turn in CHANGELOG.md.

---

## Example Timeline

```
2026-03-18  Platform v0.1.0 released
            Spector registered — Turn 0 (genesis) + Turn 1 (registration)
            Spector — Turn 2 (update: Portal, Telegard, Network)

2026-04-06  Spector — Turn 3 (update: Spectorium named, Grove language)
            Spector — Turn 4 (update: 31 trees, The Oaken, Living Spectrum)

2026-Q2     New Grove added — [device] — Turn 1 (registration)
            Spector — Turn 5 (TBD)

2026-Q3     Platform v0.2.0 released
```

---

*The Spectorium Versioning and Turn Protocol v1.1*
