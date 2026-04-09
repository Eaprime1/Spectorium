# Naming Conventions

**Version:** 1.1
**Status:** Active

---

## Overview

Consistent naming keeps the Spectorium navigable and coherent. These conventions apply to all folders, files, identifiers, and references throughout the platform.

---

## Device Names

- **Canonical Name:** Title Case, single word preferred (`Spector`, `Navigo`, `Relay`)
- **Slug (folder/ID):** lowercase, no spaces, hyphenated if multi-word (`spector`, `nexus-relay`)
- **Display Name:** May include spaces and punctuation for human-readable contexts

**Examples:**

| Canonical Name | Slug        | Use Case                         |
|----------------|-------------|----------------------------------|
| Spector        | spector     | Origin Grove, single word        |
| NexusRelay     | nexus-relay | Compound name, hyphenated slug   |
| Unit Seven     | unit-seven  | Named unit, hyphenated slug      |

---

## Grove Folders

- Location: `groves/<slug>/`
- Folder name = device slug
- Always lowercase, hyphenated

```
groves/
├── spector/
├── nexus-relay/
└── unit-seven/
```

---

## Grove Files

All standard Grove files use UPPERCASE names with `.md` extension:

| File          | Purpose                    |
|---------------|----------------------------|
| `README.md`   | Overview                   |
| `MANIFEST.md` | Identity, tree, capabilities |
| `CONFIG.md`   | Configuration              |
| `HISTORY.md`  | Turn history               |
| `STATUS.md`   | Current status             |

Entry-layer files (recommended):

| File           | Purpose                    |
|----------------|----------------------------|
| `PORTAL.md`    | Point of entry             |
| `TELEGARD.md`  | Communications gateway     |
| `NETWORK.md`   | Connections and relations  |

Additional files within a Grove should follow UPPERCASE convention for reference documents, or `lowercase-hyphenated.md` for supplementary/working documents.

---

## Tree Names

- **Canonical:** Title Case (`Oak`, `Weeping Willow`, `The Cipher Tree`)
- **In metadata:** lowercase slug (`oak`, `weeping-willow`, `cipher-tree`)
- **With tier:** `Oak · Primoris`, `Birch · Tier 1`, `The Drift · Tier 3`

---

## Standards Files

Platform-wide standards live in `standards/` and follow UPPERCASE naming:

```
standards/
├── GROVE_STANDARD.md
├── NAMING.md
└── VERSIONING.md
```

---

## Turn Identifiers

- Format: `Turn N` (capital T, space, integer)
- Zero point: `Turn 0` (genesis — optional, declared per Grove)
- First numbered turn: `Turn 1` (registration)
- Referenced in text as: `Turn 1`, `Turn 4`, etc.
- In metadata: `turn: 4`

---

## Branch Naming (Git)

Branches for Grove additions:
```
feat/grove-<device-slug>
```

Branches for standard updates:
```
standard/<topic>
```

Branches for fixes:
```
fix/<description>
```

Branches for turn updates:
```
turn/<device-slug>-<turn-number>
```

---

## IDs and Identifiers

Device IDs should be one of:
- **Slug** — simple, human-readable (`spector`)
- **UUID** — for systems requiring unique identifiers (`550e8400-e29b-41d4-a716-446655440000`)

Do not mix ID formats for the same device within a Grove.

---

*The Spectorium Naming Conventions v1.1*
