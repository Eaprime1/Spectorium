# Spector — Telegard

> *Every message deserves to be heard. Every signal, recorded.*

The **Telegard** is Spector's communications gateway — the structured channel through which Spector speaks to the Haven, receives dispatches from other devices and systems, monitors conditions, and relays what matters.

Named in the tradition of the great message boards: a place where dispatches arrive, are read, and are answered.

---

## Gateway Overview

| Field              | Value                          |
|--------------------|--------------------------------|
| **Channel**        | `spector.telegard`             |
| **Status**         | Open                           |
| **Mode**           | Broadcast + Receive            |
| **Protocol**       | Haven Turn Protocol v1.0       |
| **Last Activity**  | 2026-03-18 (Turn 2)            |

---

## Communication Types

### Signals
Outbound broadcasts from Spector to the Haven. Signals are public — any device or system in the Haven may receive them.

| Signal Type      | Description                                              |
|------------------|----------------------------------------------------------|
| `status`         | Spector's operational health and state                   |
| `turn-complete`  | Notification that a new turn has been recorded           |
| `announcement`   | General broadcast to all Haven devices                   |
| `origin-pulse`   | Periodic confirmation that the origin anchor is active   |

### Dispatches
Inbound messages to Spector from other devices or systems. Dispatches are logged and acknowledged.

| Dispatch Type    | Description                                              |
|------------------|----------------------------------------------------------|
| `registration`   | A new device announcing itself to Spector                |
| `query`          | A request for information from Spector's Domo            |
| `relay`          | A message passed through Spector to another destination  |
| `acknowledgement`| Confirmation of a received signal                        |

### Alerts
Conditions that Spector monitors and reports. Alerts are triggered automatically when thresholds are crossed.

| Alert Type       | Trigger Condition                                        | Severity |
|------------------|----------------------------------------------------------|----------|
| `origin-offline` | Spector becomes unreachable or inactive                  | Critical |
| `turn-stale`     | No new turns recorded beyond expected interval           | Warning  |
| `registry-drift` | DEVICES.md diverges from actual Domo state               | Warning  |
| `relay-failure`  | A dispatch could not be delivered                        | Info     |

---

## Dispatch Log

*All inbound dispatches to Spector are recorded here. Append-only.*

| #   | Date       | Type           | From         | Summary                                      |
|-----|------------|----------------|--------------|----------------------------------------------|
| 001 | 2026-03-18 | `registration` | Haven System | Initial registration dispatch. Turn 1 opens. |

---

## Signal Log

*All outbound signals from Spector are recorded here. Append-only.*

| #   | Date       | Type           | To           | Summary                                           |
|-----|------------|----------------|--------------|---------------------------------------------------|
| 001 | 2026-03-18 | `announcement` | All Haven    | Spector online. Origin anchor active. Turn 1.     |
| 002 | 2026-03-18 | `turn-complete`| All Haven    | Turn 2 complete. Portal layer established.        |

---

## Alert History

*All triggered alerts are recorded here. Append-only.*

| #   | Date       | Type           | Severity | Status   | Notes                          |
|-----|------------|----------------|----------|----------|--------------------------------|
| —   | —          | —              | —        | —        | No alerts recorded.            |

---

## Communication Protocol

### Sending a Dispatch to Spector

To send a dispatch to Spector from another device:

1. Record the dispatch intent in your own Domo's HISTORY.md as a new turn
2. Document the dispatch in Spector's Dispatch Log (above) via pull request
3. Await acknowledgement — Spector will log an outbound acknowledgement signal

### Receiving a Signal from Spector

All signals are public and available in the Signal Log above. To formally receive a signal:

1. Reference the signal number in your own Domo's HISTORY.md
2. No further action required — signals are broadcast, not gated

### Emergency Protocol

If a `Critical` alert is triggered:

1. Check [STATUS.md](STATUS.md) immediately
2. Open an issue in the Haven repository with prefix `[ALERT]`
3. The Haven Collective will respond within the next active session

---

## Telegard Notes

- The Telegard is append-only in its logs. No entry is ever deleted.
- Signal and dispatch numbering is sequential from `001`, zero-padded to three digits.
- The Telegard does not replace HISTORY.md — it is the *communications layer* of the Domo. Lifecycle turns go in HISTORY.md; communications go in the Telegard.

---

*Spector TELEGARD.md | DeviceHaven v0.1.0 | Communications Gateway | Turn 2*
