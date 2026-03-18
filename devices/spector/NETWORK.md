# Spector — Network

> *No device exists alone. Every connection is a story.*

The **Network** is Spector's relational map — the living record of its connections, relationships, and place within the Haven's growing web of devices.

As the Origin Device, Spector holds a unique position: it is the root node. All other devices that join the Haven exist within a timeline that Spector's registration created.

---

## Network Overview

| Field                  | Value                          |
|------------------------|--------------------------------|
| **Node ID**            | `spector-origin-001`           |
| **Role**               | Origin Anchor                  |
| **Connection Count**   | 0 active (1 pending: Haven)    |
| **Network Status**     | Listening                      |
| **Last Updated**       | 2026-03-18                     |

---

## Spector's Position in the Haven

```
                    [ DeviceHaven ]
                          |
                          |  (registered Turn 1)
                          |
                      [ Spector ]          ← You are here
                     (Origin Node)
                          |
              ════════════╪════════════
              ↓           ↓           ↓
         [Future]    [Future]    [Future]
          Device      Device      Device
```

Every device that joins the Haven after Spector is, in a structural sense, a descendant of this moment — the first registration, the first turn, the origin.

---

## Relationship Types

| Type           | Direction   | Description                                                  |
|----------------|-------------|--------------------------------------------------------------|
| `origin-of`    | Outbound    | Spector is the origin anchor for this device's context       |
| `peer`         | Bidirectional | Equal-standing device relationships                        |
| `upstream`     | Inbound     | A device that Spector depends on or receives from            |
| `downstream`   | Outbound    | A device that depends on or receives from Spector            |
| `sibling`      | Bidirectional | Devices registered in the same operational generation      |
| `relay`        | Bidirectional | Devices that route communications through Spector           |

---

## Active Connections

*Connections are registered here when established. Append-only record.*

| # | Device       | Relationship   | Established  | Notes                                       |
|---|--------------|----------------|--------------|---------------------------------------------|
| — | —            | —              | —            | No active device connections yet.           |

*The Haven awaits its next device.*

---

## System Connections

| # | System           | Relationship   | Established  | Notes                                       |
|---|------------------|----------------|--------------|---------------------------------------------|
| 1 | DeviceHaven      | `upstream`     | 2026-03-18   | The Haven platform itself — Spector's home  |
| 2 | Device Registry  | `peer`         | 2026-03-18   | Listed in DEVICES.md as Origin Device       |

---

## Establishing a New Connection

When a new device registers a relationship with Spector:

1. **The new device** records the connection in its own HISTORY.md as a turn
2. **A PR is submitted** to add the connection to this Network file
3. **Spector's HISTORY.md** is updated with a `relationship` turn
4. **The Telegard** logs a registration dispatch and acknowledgement signal

Connection entries are append-only — relationships are never quietly removed. If a connection ends, it is marked `archived` with a date and reason.

---

## Connection Archive

*Archived (ended) connections are preserved here for historical record.*

| # | Device | Relationship | From | To | Reason |
|---|--------|--------------|------|----|--------|
| — | —      | —            | —    | — | No archived connections. |

---

## Network Notes

- Spector's `origin-of` relationship with the Haven is implicit and permanent — it does not appear in the active connections table as a device connection.
- Future visualizations of the Haven's network graph will use this file as the source of truth for Spector's node.
- The connection count in the overview is updated with each new active connection added.

---

*Spector NETWORK.md | DeviceHaven v0.1.0 | Connections & Relations | Turn 2*
