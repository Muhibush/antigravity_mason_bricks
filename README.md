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

### 2. `model`
Generates a standalone data model with `json_serializable`, `Equatable`, `props`, and `copyWith`.

### 3. `repository`
Generates a standalone Dio repository returning an `Either<Exception, dynamic>` from `fpdart`.

### 4. `bloc`
Generates a standalone BLoC (`bloc`, `event`, `state`) using the `Equatable` state pattern and a `BlocStatus` enum.

### 5. `cubit`
Generates a standalone Cubit (`cubit`, `state`) using the `Equatable` state pattern and a `BlocStatus` enum.

## Installation in Your Flutter Project

To use these bricks in **any** Flutter project, create a `mason.yaml` file in the root of your Flutter project and add this repository as a git dependency for each brick you want:

```yaml
# mason.yaml
bricks:
  feature:
    git:
      url: https://github.com/Muhibush/antigravity_mason_bricks.git
      path: feature
  model:
    git:
      url: https://github.com/Muhibush/antigravity_mason_bricks.git
      path: model
  repository:
    git:
      url: https://github.com/Muhibush/antigravity_mason_bricks.git
      path: repository
  bloc:
    git:
      url: https://github.com/Muhibush/antigravity_mason_bricks.git
      path: bloc
  cubit:
    git:
      url: https://github.com/Muhibush/antigravity_mason_bricks.git
      path: cubit
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
