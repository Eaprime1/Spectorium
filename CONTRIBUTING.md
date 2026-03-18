# Contributing to DeviceHaven

Welcome to the Haven. We're glad you're here.

DeviceHaven is a collaborative platform, and contributions — whether a new device Domo, a standard improvement, or a documentation fix — are valued and welcomed.

---

## Ways to Contribute

### 1. Register a New Device
Add your device to the Haven by creating its Domo following the [Domo Standard](standards/DOMO_STANDARD.md).

### 2. Improve an Existing Domo
Update documentation, add history turns, or refine configuration details for an existing device.

### 3. Improve Platform Standards
Propose improvements to naming conventions, versioning protocol, or the Domo structure itself.

### 4. Fix Documentation
Clear, accurate documentation is critical. Fixes and improvements are always welcome.

---

## How to Add a New Device

1. **Check the Registry** — Confirm your device isn't already registered in [DEVICES.md](DEVICES.md).

2. **Create the Domo folder:**
   ```bash
   mkdir -p devices/<device-name>
   ```

3. **Add the required files** (see [Domo Standard](standards/DOMO_STANDARD.md)):
   - `README.md` — Device overview
   - `MANIFEST.md` — Identity and capabilities
   - `CONFIG.md` — Configuration reference
   - `HISTORY.md` — Turn history
   - `STATUS.md` — Current status

4. **Register the device** in [DEVICES.md](DEVICES.md).

5. **Submit a Pull Request** with the title format:
   ```
   feat(domo): add <device-name> device
   ```

---

## Commit Message Convention

We follow a simple, clear convention:

```
<type>(<scope>): <description>

Types:
  feat      - New device, Domo, or feature
  fix       - Correction to existing content
  docs      - Documentation improvement
  standard  - Change to a platform standard
  turn      - A new turn recorded in a device's history
  chore     - Maintenance, structure, tooling
```

**Examples:**
```
feat(domo): add spector device as origin
turn(spector): record turn 1 — device registration
docs(standard): clarify Domo naming requirements
```

---

## Pull Request Guidelines

- Keep PRs focused. One device per PR if adding new devices.
- Reference relevant issues or context in the PR description.
- Ensure all required Domo files are present and complete.
- Update `DEVICES.md` when adding or changing device status.

---

## Code of Conduct

DeviceHaven is a respectful, collaborative space. All contributors are expected to:

- Be kind and constructive in all communications.
- Respect the history and integrity of existing Domos.
- Follow the standards — they exist to keep the Haven coherent.

---

## Questions?

Open an issue or start a discussion. The Haven is always open.

---

*DeviceHaven Contributing Guide v1.0*
