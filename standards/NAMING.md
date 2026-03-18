# Naming Conventions

**Version:** 1.0
**Status:** Active

---

## Overview

Consistent naming keeps the Haven navigable and coherent. These conventions apply to all folders, files, identifiers, and references within DeviceHaven.

---

## Device Names

- **Canonical Name:** Title Case, single word preferred (`Spector`, `Nexus`, `Relay`)
- **Slug (folder/ID):** lowercase, no spaces, hyphenated if multi-word (`spector`, `nexus-relay`)
- **Display Name:** May include spaces and punctuation for human-readable contexts

**Examples:**

| Canonical Name | Slug        | Use Case                         |
|----------------|-------------|----------------------------------|
| Spector        | spector     | Origin device, single word       |
| NexusRelay     | nexus-relay | Compound name, hyphenated slug   |
| Unit Seven     | unit-seven  | Named unit, hyphenated slug      |

---

## Domo Folders

- Location: `devices/<slug>/`
- Folder name = device slug
- Always lowercase, hyphenated

```
devices/
├── spector/
├── nexus-relay/
└── unit-seven/
```

---

## Domo Files

All standard Domo files use UPPERCASE names with `.md` extension:

| File          | Purpose                    |
|---------------|----------------------------|
| `README.md`   | Overview                   |
| `MANIFEST.md` | Identity and capabilities  |
| `CONFIG.md`   | Configuration              |
| `HISTORY.md`  | Turn history               |
| `STATUS.md`   | Current status             |

Additional files within a Domo should follow the same UPPERCASE convention if they are reference documents, or `lowercase-hyphenated.md` if they are supplementary notes or working documents.

---

## Standards Files

Platform-wide standards live in `standards/` and follow UPPERCASE naming:

```
standards/
├── DOMO_STANDARD.md
├── NAMING.md
└── VERSIONING.md
```

---

## Turn Identifiers

- Format: `Turn N` (capital T, space, integer)
- First turn: `Turn 1`
- Referenced in text as: `Turn 1`, `Turn 9`, etc.
- In metadata: `turn: 1`

---

## Branch Naming (Git)

Branches for device additions:
```
feat/domo-<device-slug>
```

Branches for standard updates:
```
standard/<topic>
```

Branches for fixes:
```
fix/<description>
```

---

## IDs and Identifiers

Device IDs should be one of:
- **Slug** — simple, human-readable (`spector`)
- **UUID** — for systems requiring unique identifiers (`550e8400-e29b-41d4-a716-446655440000`)

Do not mix ID formats for the same device within a Domo.

---

*DeviceHaven Naming Conventions v1.0*
