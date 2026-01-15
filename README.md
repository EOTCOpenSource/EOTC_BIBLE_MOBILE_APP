# EOTC Bible Mobile App

A Flutter-based mobile application for reading the Holy Bible, built with a **feature-first architecture**, optimized for **offline-first usage**, and designed for long-term open-source collaboration.

This project is the mobile companion to the EOTC Bible web project and shares the same core principles: clarity, accessibility, and maintainability.

---

## Features

- 📖 Full Bible reader experience
- 🔍 Fast **offline search** (verses & chapters)
- 🔖 Bookmarks
- ✍️ Notes (with preview & edit)
- 🖍 Highlights
- 📚 Reading plans
- 🗂 Library hub (aggregates bookmarks, notes, highlights)
- 🎨 Centralized theme & typography
- 🌍 Localization-ready (Amharic / English)
- 🚀 API-ready (local JSON now, server sync later)

---

## Architectural Philosophy

This project follows a **feature-first (vertical slice)** architecture.

### Why feature-first?

- Clear ownership of code
- Easy onboarding for contributors
- Scales well as features grow
- Prevents tight coupling between unrelated parts

Each feature owns:

- its **data**
- its **domain logic**
- its **presentation**

Shared infrastructure lives in `core/`.

---

## Project Folder Structure

```text
lib/
├── app/                 # Application shell (router, theme, layout)
├── core/                # Shared infrastructure & UI
├── features/            # Feature-first modules
│   ├── bible/
│   ├── search/
│   ├── bookmarks/
│   ├── notes/
│   ├── highlights/
│   ├── reading_plans/
│   ├── library/
│   └── profile/
├── l10n/                # Localization
└── main.dart
```

## Feature Structure (Example)

Each feature follows a **vertical slice** structure.  
A feature fully owns its UI, state, domain logic, and data access.

```text
features/bible/
├── data/                # Datasources, models, repositories
├── domain/              # Entities & repository contracts
└── presentation/        # Pages, widgets, providers
```

### Future Phase (API-Based)

- Bible content fetched from a remote API
- Stored locally on the device (database or file-based cache)
- Same repositories and domain logic reused
- UI, search, bookmarks, and notes remain unchanged

The switch from bundled JSON to API-based data requires **no UI changes**, only a new remote datasource implementation.

### Library Feature (Aggregator)

The Library feature acts as a **presentation-only** aggregator that surfaces content from other features without owning their data.

It is responsible for:

- Displaying the Daily Verse
- Showing totals for Bookmarks, Notes, and Highlights
- SProviding navigation entry points into feature-owned flows

It does not:

- Store data
- Modify data
- Own business logic of other features

## Navigation

Navigation is handled using **GoRouter** with clear ownership and composition rules.

### Routing Principles

- Each feature defines and owns its own routes.
- Feature routes are composed at the app level.
- No feature may define or push routes belonging to another feature.
- Cross-feature navigation must go through feature entry routes.

### Bottom Navigation

The application uses a bottom navigation bar with the following primary sections:

- Home
- Bible
- Reading Plans
- Library
- Profile

Each tab maps to a **feature entry route**, not to internal feature pages.

## State Management

State management is implemented using **Riverpod**.

### Usage

Riverpod is used for:

- Feature-level state management
- Dependency injection
- Repository exposure
- Cross-feature read-only state access

### Provider Placement Rules

- **Global providers** → `app/providers/`
- **Feature-specific providers** → `features/*/presentation/providers/`
- **Repositories** must be exposed through providers
- UI logic must never exist inside repositories

---
