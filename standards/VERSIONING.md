# Versioning and Turn Protocol

**Version:** 1.0
**Status:** Active

---

## Overview

DeviceHaven uses two parallel versioning systems:

1. **Platform Versioning** — tracks the DeviceHaven platform itself (semantic versioning)
2. **Turn Protocol** — tracks the lifecycle events of individual devices

---

## Platform Versioning

DeviceHaven follows [Semantic Versioning](https://semver.org/):

```
MAJOR.MINOR.PATCH
```

| Component | Incremented when...                                               |
|-----------|-------------------------------------------------------------------|
| `MAJOR`   | Breaking changes to platform structure or standards               |
| `MINOR`   | New features, new standards, backward-compatible additions        |
| `PATCH`   | Documentation fixes, minor corrections, non-structural changes    |

**Current Version:** `0.1.0`

Pre-1.0 versions (`0.x.x`) indicate the platform is in foundational development. Standards may evolve more rapidly before `1.0.0`.

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
| `registration`     | Device is first registered in the Haven                        |
| `update`           | General update to Domo content or metadata                     |
| `capability-change`| Device capabilities are added, modified, or removed            |
| `status-change`    | Device operational status changes                              |
| `config-change`    | Significant configuration modification                         |
| `incident`         | A notable event, issue, or anomaly is recorded                 |
| `relationship`     | A new relationship with another device or system is established|
| `decommission`     | Device is formally decommissioned                              |

### Turn Format (in HISTORY.md)

```markdown
## Turn N — YYYY-MM-DD — Type

**Type:** <turn-type>
**Author:** <contributor>

<Description of what happened, why, and any relevant context.>
```

### Turn Zero

There is no Turn Zero. Turns begin at **Turn 1** — the registration turn. Every device's history starts with Turn 1.

### The Haven Turn Counter

The Haven maintains a global turn awareness: the highest turn number across any device's history. This is recorded in `DEVICES.md`. It gives a sense of the Haven's overall activity and age.

---

## Relationship Between Platform Versions and Turns

Platform versions and device turns are independent but related:

- Platform version `0.1.0` opens with Spector at Turn 1.
- Platform versions advance when the Haven itself changes.
- Device turns advance when individual device events occur.
- A platform version release is itself recorded as a turn in the Haven's root changelog.

---

## Example Timeline

```
2026-03-18  Platform v0.1.0 released
            Spector registered — Turn 1 (registration)

2026-Q2     New device added — Navigo registered — Turn 1 (registration)
            Spector capability update — Turn 2 (capability-change)

2026-Q3     Platform v0.2.0 released
            Spector config update — Turn 3 (config-change)
```

---

*DeviceHaven Versioning and Turn Protocol v1.0*
