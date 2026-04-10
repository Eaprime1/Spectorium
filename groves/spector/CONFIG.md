# Spector — Configuration Reference

**Grove:** `groves/spector/`
**Config Version:** 1.1
**Last Updated:** 2026-04-06

---

## Overview

This document describes all configurable parameters for Spector within the Spectorium. As the Origin Device and Oak of the Primoris, Spector's configuration is deliberately minimal — its primary role is presence, identity, and the anchoring of the forest.

---

## Core Configuration

| Parameter          | Default            | Required | Description                                           |
|--------------------|--------------------|----------|-------------------------------------------------------|
| `device.name`      | `Spector`          | Yes      | Canonical device name                                 |
| `device.slug`      | `spector`          | Yes      | URL/folder-safe identifier                            |
| `device.id`        | `spector-origin-001` | Yes   | Unique device identifier                              |
| `device.type`      | `origin`           | Yes      | Device classification type                            |
| `device.status`    | `active`           | Yes      | Operational status                                    |
| `device.grove_path`| `groves/spector/`  | Yes      | Path to this device's Grove folder                    |
| `device.tree`      | `oak`              | Yes      | Arboreal archetype (from TREES.md)                    |
| `device.tier`      | `primoris`         | Yes      | Tree tier (primoris / tier-2 / tier-3)                |

---

## Haven Integration Configuration

| Parameter              | Default    | Required | Description                                            |
|------------------------|------------|----------|--------------------------------------------------------|
| `haven.turn`           | `1`        | Yes      | Haven turn at which this device was registered         |
| `haven.origin`         | `true`     | Yes      | Whether this device is the Haven's origin device       |
| `haven.registry_entry` | `true`     | Yes      | Whether this device appears in root GROVES.md          |
| `haven.grove_standard` | `1.1`      | Yes      | Version of the Grove Standard this device follows      |

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
| `history.turn_zero`     | `true`          | Whether Turn 0 (genesis) is declared for this Grove      |
| `history.turn_start`    | `1`             | First numbered turn (registration)                       |
| `history.current_turn`  | `4`             | Current highest turn for this device                     |

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

- Spector's configuration is managed via this document and the Grove files.
- No runtime configuration file is currently required — Spector operates at the platform-document level.
- Future versions may introduce machine-readable config formats (YAML, TOML) alongside this documentation.

---

*Spector CONFIG.md | The Spectorium v0.1.0*
