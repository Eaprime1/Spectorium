# Domo Standard

**Version:** 1.0
**Status:** Active

---

## What is a Domo?

A **Domo** (device home) is the dedicated folder within DeviceHaven that belongs to a single device. It is that device's complete, canonical record — its identity, capabilities, configuration, history, and current status.

No two devices share a Domo. Every device in the Haven has exactly one Domo.

---

## Domo Folder Structure

Every Domo must contain the following files:

```
devices/<device-name>/
├── README.md       REQUIRED  Device overview and quick reference
├── MANIFEST.md     REQUIRED  Device identity, type, and capabilities
├── CONFIG.md       REQUIRED  Configuration reference and parameters
├── HISTORY.md      REQUIRED  Turn-by-turn lifecycle history
└── STATUS.md       REQUIRED  Current operational status
```

Additional files may be added as needed (logs, schemas, diagrams, etc.), but the five required files must always be present and maintained.

---

## File Specifications

### README.md
The human-readable introduction to the device. Should include:
- Device name and one-line description
- Key capabilities summary
- Links to other Domo files
- Relationship to other devices (if any)
- Current version/turn reference

### MANIFEST.md
The structured identity document. Must include:
- **Device Name** — canonical identifier
- **Device Type** — see type definitions in DEVICES.md
- **Device ID** — unique identifier (UUID or slug)
- **Haven Turn** — the turn on which this device was registered
- **Capabilities** — what this device can do
- **Interfaces** — how this device communicates
- **Dependencies** — other devices or systems this device relies on
- **Owner/Team** — responsible party

### CONFIG.md
The configuration reference. Must include:
- All configurable parameters with descriptions
- Default values
- Valid value ranges or options
- Required vs. optional parameters
- Environment or context requirements

### HISTORY.md
The immutable turn log. Rules:
- Turns are **append-only** — never delete or modify existing turns
- Each turn must include: turn number, date, type, and description
- Turn types: `registration`, `update`, `capability-change`, `status-change`, `incident`, `decommission`
- The first entry is always the registration turn

### STATUS.md
The living status document. Should include:
- Current operational status
- Last updated timestamp
- Active capabilities
- Known issues or limitations
- Next planned turn (if scheduled)

---

## Naming Conventions

- Domo folder name: lowercase, hyphenated (`my-device-name`)
- File names: UPPERCASE with `.md` extension (per standard)
- Device name in files: Title Case (`My Device Name`)
- Device ID: lowercase slug or UUID

See [NAMING.md](NAMING.md) for full naming conventions.

---

## Domo Creation Checklist

- [ ] Domo folder created at `devices/<device-name>/`
- [ ] `README.md` complete with overview and links
- [ ] `MANIFEST.md` complete with all required fields
- [ ] `CONFIG.md` complete with all parameters documented
- [ ] `HISTORY.md` initialized with registration turn
- [ ] `STATUS.md` set to initial status
- [ ] Device registered in root `DEVICES.md`

---

## Reference Implementation

See [devices/spector/](../devices/spector/) — the Origin Domo, and the standard by which all Domos are measured.

---

*DeviceHaven Domo Standard v1.0*
