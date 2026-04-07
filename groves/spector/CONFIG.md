# Spector — Configuration Reference

**Domo:** `devices/spector/`
**Config Version:** 1.0
**Last Updated:** 2026-03-18

---

## Overview

This document describes all configurable parameters for Spector within the DeviceHaven platform. As the Origin Device, Spector's configuration is deliberately minimal — its primary role is presence and identity, not complex operation.

---

## Core Configuration

| Parameter          | Default            | Required | Description                                           |
|--------------------|--------------------|----------|-------------------------------------------------------|
| `device.name`      | `Spector`          | Yes      | Canonical device name                                 |
| `device.slug`      | `spector`          | Yes      | URL/folder-safe identifier                            |
| `device.id`        | `spector-origin-001` | Yes   | Unique device identifier                              |
| `device.type`      | `origin`           | Yes      | Device classification type                            |
| `device.status`    | `active`           | Yes      | Operational status                                    |
| `device.domo_path` | `devices/spector/` | Yes      | Path to this device's Domo folder                     |

---

## Haven Integration Configuration

| Parameter              | Default    | Required | Description                                            |
|------------------------|------------|----------|--------------------------------------------------------|
| `haven.turn`           | `1`        | Yes      | Haven turn at which this device was registered         |
| `haven.origin`         | `true`     | Yes      | Whether this device is the Haven's origin device       |
| `haven.registry_entry` | `true`     | Yes      | Whether this device appears in root DEVICES.md         |
| `haven.domo_version`   | `1.0`      | Yes      | Version of the Domo Standard this device follows       |

---

## Status Configuration

| Parameter               | Default    | Options                                    | Description                      |
|-------------------------|------------|--------------------------------------------|----------------------------------|
| `status.operational`    | `active`   | `active`, `dormant`, `pending`, `archived` | Current operational status       |
| `status.last_updated`   | `2026-03-18` | ISO 8601 date                            | When status was last confirmed   |
| `status.health`         | `nominal`  | `nominal`, `degraded`, `unknown`           | Health assessment                |

---

## History Configuration

| Parameter               | Default         | Description                                              |
|-------------------------|-----------------|----------------------------------------------------------|
| `history.mode`          | `append-only`   | Turn records are append-only — never modified            |
| `history.turn_start`    | `1`             | First turn number (always 1 for any device)              |
| `history.current_turn`  | `1`             | Current highest turn for this device                     |

---

## Immutable Parameters

The following parameters are fixed for Spector and **cannot be changed**:

| Parameter           | Value     | Reason                                                  |
|---------------------|-----------|---------------------------------------------------------|
| `device.type`       | `origin`  | Spector is permanently designated the Origin Device     |
| `haven.turn`        | `1`       | Registration turn is immutable                          |
| `haven.origin`      | `true`    | Origin status cannot be revoked                         |
| `device.slug`       | `spector` | Slug change would break all historical references       |

---

## Configuration Notes

- Spector's configuration is managed via this document and the Domo files.
- No runtime configuration file is currently required — Spector operates at the platform-document level.
- Future versions may introduce machine-readable config formats (YAML, TOML) alongside this documentation.

---

*Spector CONFIG.md | DeviceHaven v0.1.0*
