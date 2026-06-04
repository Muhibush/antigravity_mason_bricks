# Antigravity Mason Bricks 🧱

This repository contains the official code generators for the Antigravity Flutter Architecture.

## Bricks Available

### 1. `feature`
Generates a complete, blueprint-compliant feature module containing:
- `bloc` (State, Event, Bloc folded with `fpdart`)
- `model` (`json_serializable` ready)
- `repository` (Dio wrapped in an `Either` response)
- `widget` (UI utilizing `context.select`)
- `page` (Routing entry point with `BlocProvider`)

## Installation in Your Flutter Project

To use these bricks in **any** Flutter project, create a `mason.yaml` file in the root of your Flutter project and add this repository as a git dependency:

```yaml
# mason.yaml
bricks:
  feature:
    git:
      url: https://github.com/Muhibush/antigravity_mason_bricks.git
      path: feature
```

Then run:
```bash
mason get
```

## Usage

To generate a new feature, run:
```bash
mason make feature --feature_name profile_settings
```
