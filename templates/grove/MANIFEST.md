# {{DEVICE_NAME}} — Grove Manifest

**Grove:** `groves/{{DEVICE_SLUG}}/`
**Manifest Version:** 1.0
**Last Updated:** {{DATE}}

---

## Grove Identity

| Field              | Value                                          |
|--------------------|------------------------------------------------|
| **Device Name**    | {{DEVICE_NAME}}                                |
| **Device Slug**    | `{{DEVICE_SLUG}}`                              |
| **Device ID**      | `{{DEVICE_SLUG}}-001`                          |
| **Tree**           | {{TREE_NAME}} · {{TIER}}                       |
| **Device Type**    | {{DEVICE_TYPE}}                                |
| **Haven Turn**     | Turn 1                                         |
| **Registered**     | {{DATE}}                                       |
| **Status**         | Active                                         |
| **Owner**          | {{OWNER}}                                      |
| **Grove Version**  | 1.0.0                                          |

---

## Description

{{DESCRIPTION}}

---

## Capabilities

### Core Capabilities

| Capability | Status | Description |
|------------|--------|-------------|
| {{CAP_1}}  | Active | {{CAP_1_DESC}} |
| {{CAP_2}}  | Active | {{CAP_2_DESC}} |

---

## Interfaces

| Interface   | Type       | Description                                 |
|-------------|------------|---------------------------------------------|
| Grove Files | Filesystem | All files accessible via `groves/{{DEVICE_SLUG}}/` |
| Registry    | Document   | Listed in root `GROVES.md`                  |
| Turn Log    | Append-Only| HISTORY.md — immutable turn record          |

---

## Dependencies

| Dependency             | Type     | Required | Description                        |
|------------------------|----------|----------|------------------------------------|
| The Spectorium v0.1.0+ | Platform | Yes      | The Spectorium platform            |
| Grove Standard v1.1    | Standard | Yes      | Structure requirements             |

---

## Tags

`{{DEVICE_SLUG}}` · `{{TREE_SLUG}}` · `{{TIER_SLUG}}` · `active` · `v0.1.0`

---

*{{DEVICE_NAME}} MANIFEST.md | The Spectorium v0.1.0*
