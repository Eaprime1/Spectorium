# Grove Standard

**Version:** 1.1
**Status:** Active

---

## What is a Grove?

A **Grove** is the dedicated folder within the Spectorium that belongs to a single device. It is that device's complete, canonical record — its identity, tree, capabilities, configuration, history, and current status.

No two devices share a Grove. Every device in the Spectorium has exactly one Grove. Every Grove is rooted in exactly one Tree.

---

## Grove Folder Structure

Every Grove must contain the following files:

```
groves/<device-slug>/
├── README.md       REQUIRED  Device overview and quick reference
├── MANIFEST.md     REQUIRED  Grove identity, tree, and capabilities
├── CONFIG.md       REQUIRED  Configuration reference and parameters
├── HISTORY.md      REQUIRED  Turn-by-turn lifecycle history
└── STATUS.md       REQUIRED  Current operational status
```

**Entry-layer files** (recommended, not required):

```
groves/<device-slug>/
├── PORTAL.md       Structured point of entry for visitors
├── TELEGARD.md     Communications gateway
└── NETWORK.md      Connections and relational map
```

Additional files may be added freely. The five required files must always be present and maintained.

---

## File Specifications

### README.md
The human-readable introduction to the device. Must include:
- Device name, tree, and one-line description
- Grove path and identity table
- Links to other Grove files
- Turn history summary

### MANIFEST.md
The structured identity document. Must include:
- **Device Name** — canonical identifier
- **Tree** — the arboreal archetype (from [TREES.md](../TREES.md))
- **Tier** — the tree's generational tier
- **Device Type** — origin, primary, secondary, agent, virtual
- **Device ID** — unique identifier
- **Haven Turn** — turn of registration
- **Capabilities** — what this device can do
- **Interfaces** — how this device communicates
- **Dependencies** — what this device relies on
- **Owner/Team** — responsible party

### CONFIG.md
The configuration reference. Must include:
- All configurable parameters with descriptions
- Default values
- Valid value ranges or options
- Required vs. optional parameters

### HISTORY.md
The immutable turn log. Rules:
- Turns are **append-only** — never delete or modify existing turns
- Each turn must include: turn number, date, type, and description
- Turn types: `registration`, `update`, `capability-change`, `status-change`, `incident`, `relationship`, `decommission`
- The first entry is always the registration turn (Turn 1)
- Turn 0 may optionally be declared as a genesis/potential entry

### STATUS.md
The living status document. Must include:
- Current operational status
- Current turn
- Tree and tier
- Active capabilities
- Known issues
- Next planned turn

---

## Tree Requirement

Every Grove must declare its tree in `MANIFEST.md`. The tree is chosen by the device owner based on the device's nature and character. See [TREES.md](../TREES.md) for the full taxonomy of 31 trees: Oak (Primoris Pinnacle) + 3 tiers of 10.

Multiple devices may share the same tree. Trees are archetypes, not exclusive identifiers.

---

## Naming Conventions

- Grove folder: lowercase, hyphenated (`my-device`)
- Files: UPPERCASE `.md` for standard files
- Device name: Title Case

See [NAMING.md](NAMING.md) for full conventions.

---

## Grove Creation Checklist

- [ ] Grove folder created at `groves/<device-slug>/`
- [ ] Tree chosen from [TREES.md](../TREES.md) and declared in MANIFEST.md
- [ ] `README.md` complete with tree, identity table, and Grove file links
- [ ] `MANIFEST.md` complete with all required fields including tree
- [ ] `CONFIG.md` documents all parameters
- [ ] `HISTORY.md` initialized with Turn 0 (optional) and Turn 1 (required)
- [ ] `STATUS.md` set to initial status with tree listed
- [ ] Grove registered in root [GROVES.md](../GROVES.md)

---

## Reference Implementation

See [groves/spector/](../groves/spector/) — the Origin Grove, Oak of the Spectorium.

---

*The Spectorium Grove Standard v1.1*
