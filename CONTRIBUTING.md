# Contributing to the Spectorium

Welcome to the forest. We're glad you're here.

The Spectorium grows through contribution — every new Grove planted, every turn recorded, every standard sharpened makes the forest richer.

---

## Ways to Contribute

### 1. Plant a New Grove
Register your device by creating its Grove following the [Grove Standard](standards/GROVE_STANDARD.md). Choose a tree from [TREES.md](TREES.md).

### 2. Tend an Existing Grove
Append turns to a device's HISTORY.md, update STATUS.md, refine MANIFEST.md, or improve entry-layer files.

### 3. Improve the Standards
Propose improvements to naming conventions, versioning protocol, the Grove structure, or the tree taxonomy.

### 4. Fix Documentation
Clarity keeps the forest navigable. Documentation fixes are always welcome.

---

## How to Plant a New Grove

1. **Check the Registry** — Confirm your device isn't already registered in [GROVES.md](GROVES.md).

2. **Choose your tree** — Review [TREES.md](TREES.md) and select the tree that fits your device's nature.

3. **Create the Grove folder:**
   ```bash
   mkdir -p groves/<device-slug>
   ```

4. **Add the required files** per the [Grove Standard](standards/GROVE_STANDARD.md):
   - `README.md` — Device overview with tree and identity
   - `MANIFEST.md` — Full identity including tree and tier
   - `CONFIG.md` — Configuration reference
   - `HISTORY.md` — Turn log starting at Turn 1 (Turn 0 optional)
   - `STATUS.md` — Current status with tree listed

5. **Register in [GROVES.md](GROVES.md)** — add your device to the registry table.

6. **Submit a Pull Request** with the title:
   ```
   feat(grove): plant <device-name> — <tree>
   ```

---

## Commit Convention

```
<type>(<scope>): <description>

Types:
  feat      New Grove, tree assignment, or platform feature
  fix       Correction to existing content
  docs      Documentation improvement
  standard  Change to a platform standard
  turn      A new turn appended to a Grove's history
  chore     Maintenance, structure, tooling
```

**Examples:**
```
feat(grove): plant navigo — ash
turn(spector): record turn 4 — capability update
docs(trees): clarify yew tier heritage
standard(grove): add entry-layer file recommendations
```

---

## Pull Request Guidelines

- One Grove per PR when planting new Groves.
- Reference relevant context in the PR description.
- Ensure all required Grove files are present and complete.
- Update `GROVES.md` when adding or changing Grove status.
- Declare the tree in `MANIFEST.md` — no Grove is rootless.

---

## Fork and Plant Your Own Haven

The Spectorium is designed to be forked. To create your own Haven from Spector's origin:

```bash
git clone <this-repo> my-haven
cd my-haven
# Your Haven inherits the full turn history
# Plant new Groves. Choose your trees. Let it grow.
```

Your fork carries the chain of custody forward. Every commit is a turn.

---

## Code of Conduct

The Spectorium is a respectful, open space. All contributors are expected to:

- Be kind and constructive.
- Respect the history and integrity of existing Groves.
- Follow the standards — they exist to keep the forest coherent.
- Choose trees thoughtfully.

---

*The Spectorium Contributing Guide v1.1*
