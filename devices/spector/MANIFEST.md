# Spector — Device Manifest

**Domo:** `devices/spector/`
**Manifest Version:** 1.0
**Last Updated:** 2026-03-18

---

## Device Identity

| Field              | Value                                          |
|--------------------|------------------------------------------------|
| **Device Name**    | Spector                                        |
| **Device Slug**    | `spector`                                      |
| **Device ID**      | `spector-origin-001`                           |
| **Device Type**    | Origin                                         |
| **Haven Turn**     | Turn 1                                         |
| **Registered**     | 2026-03-18                                     |
| **Status**         | Active                                         |
| **Owner**          | DeviceHaven Collective                         |
| **Domo Version**   | 1.0.0                                          |

---

## Description

Spector is the first registered device in DeviceHaven. It is designated as the **Origin Device** — the anchor from which the Haven's timeline begins. Spector's Domo is the canonical reference implementation for all device Domos in the platform.

Spector's primary function within the Haven is identity and continuity. It represents the platform's genesis and provides the structural blueprint for all devices that follow.

---

## Capabilities

### Core Capabilities

| Capability              | Status  | Description                                              |
|-------------------------|---------|----------------------------------------------------------|
| Identity Anchoring      | Active  | Provides the origin reference point for Haven timeline   |
| Domo Reference          | Active  | Serves as template/reference for all Domo structures     |
| Turn Record Maintenance | Active  | Maintains immutable turn history per Haven protocol      |
| Registry Participation  | Active  | Listed and discoverable in Haven device registry         |

### Extended Capabilities

| Capability              | Status  | Description                                              |
|-------------------------|---------|----------------------------------------------------------|
| Inter-Device Relations  | Ready   | Prepared to establish relationships with future devices  |
| Status Reporting        | Active  | Maintains and publishes current operational status       |
| Configuration Reference | Active  | Provides configuration documentation for the device     |

---

## Interfaces

| Interface       | Type          | Description                                           |
|-----------------|---------------|-------------------------------------------------------|
| Domo Files      | Filesystem    | All Domo files accessible via `devices/spector/`      |
| Registry Entry  | Document      | Listed in root `DEVICES.md`                           |
| Turn Log        | Append-Only   | HISTORY.md — immutable turn record                    |

---

## Dependencies

| Dependency          | Type      | Required | Description                                    |
|---------------------|-----------|----------|------------------------------------------------|
| DeviceHaven v0.1.0+ | Platform  | Yes      | The Haven platform and standards               |
| Domo Standard v1.0  | Standard  | Yes      | Structure and file requirements for this Domo  |

---

## Tags

`origin` · `turn-1` · `reference-implementation` · `active` · `v0.1.0`

---

## Notes

Spector's registration constitutes Turn 1 of the Haven's global turn timeline. This is an immutable historical fact. Spector cannot be deregistered or archived without formal Haven Collective approval, as doing so would sever the origin anchor of the entire platform.

---

*Spector MANIFEST.md | DeviceHaven v0.1.0*
