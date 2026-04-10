# {{DEVICE_NAME}} — Configuration Reference

**Grove:** `groves/{{DEVICE_SLUG}}/`
**Config Version:** 1.0
**Last Updated:** {{DATE}}

---

## Overview

Configuration reference for {{DEVICE_NAME}} within the Spectorium.

---

## Core Configuration

| Parameter           | Default               | Required | Description                          |
|---------------------|-----------------------|----------|--------------------------------------|
| `device.name`       | `{{DEVICE_NAME}}`     | Yes      | Canonical device name                |
| `device.slug`       | `{{DEVICE_SLUG}}`     | Yes      | URL/folder-safe identifier           |
| `device.id`         | `{{DEVICE_SLUG}}-001` | Yes      | Unique device identifier             |
| `device.type`       | `{{DEVICE_TYPE}}`     | Yes      | Device classification type           |
| `device.status`     | `active`              | Yes      | Operational status                   |
| `device.grove_path` | `groves/{{DEVICE_SLUG}}/` | Yes  | Path to this device's Grove folder   |
| `device.tree`       | `{{TREE_SLUG}}`       | Yes      | Arboreal archetype (from TREES.md)   |
| `device.tier`       | `{{TIER_SLUG}}`       | Yes      | Tree tier                            |

---

## Haven Integration Configuration

| Parameter              | Default | Required | Description                                  |
|------------------------|---------|----------|----------------------------------------------|
| `haven.turn`           | `1`     | Yes      | Turn at which this device was registered     |
| `haven.registry_entry` | `true`  | Yes      | Listed in root GROVES.md                     |
| `haven.grove_standard` | `1.1`   | Yes      | Grove Standard version followed              |

---

## Status Configuration

| Parameter             | Default       | Options                                    | Description           |
|-----------------------|---------------|--------------------------------------------|-----------------------|
| `status.operational`  | `active`      | `active`, `dormant`, `pending`, `archived` | Operational status    |
| `status.last_updated` | `{{DATE}}`    | ISO 8601 date                              | Last confirmed date   |
| `status.health`       | `nominal`     | `nominal`, `degraded`, `unknown`           | Health assessment     |

---

## History Configuration

| Parameter               | Default       | Description                                   |
|-------------------------|---------------|-----------------------------------------------|
| `history.mode`          | `append-only` | Turns are append-only                         |
| `history.turn_zero`     | `false`       | Whether Turn 0 (genesis) is declared          |
| `history.turn_start`    | `1`           | First numbered turn (registration)            |
| `history.current_turn`  | `1`           | Current highest turn                          |

---

## Immutable Parameters

| Parameter      | Value             | Reason                                   |
|----------------|-------------------|------------------------------------------|
| `haven.turn`   | `1`               | Registration turn is immutable           |
| `device.slug`  | `{{DEVICE_SLUG}}` | Slug change breaks historical references |

---

*{{DEVICE_NAME}} CONFIG.md | The Spectorium v0.1.0*
