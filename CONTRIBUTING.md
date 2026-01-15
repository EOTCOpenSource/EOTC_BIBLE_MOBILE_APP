# Contributing to EOTC BIBLE MOBILE APP

We welcome contributions! To keep the project consistent and maintainable, please follow these simple guidelines.

---

## How to Contribute

1. **Clone your fork:**
   ```
   git clone https://github.com/your-username/EOTC-BIBLE-MOBILE.git
   cd EOTC-BIBLE-MOBILE
   ```
2. **Create a feature branch:**
   ```
   git checkout -b feature/your-feature-name
   ```
3. Make your changes following existing code patterns
4. Make sure to check code formatting before you commit changes
5. Commit with descriptive messages:
   ```bash
   git commit -m "[feature description]"
   ```
6. Push to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```
7. Open a Pull Request to the main branch

## Project Structure

To maintain a clean architecture, please place your code in the appropriate directories:

- **Feature-specific code:** Goes under `lib/features/<feature-name>/`.
- **Global providers:** Goes in `lib/app/providers/`.
- **Shared UI components:** Use `lib/core/widgets/` for reusable components.

---

## Code Formatting

This project follows the official Dart / Flutter formatting rules.

Please make sure **Format on Save** is enabled in your editor so all code is automatically formatted before committing.

### Recommended settings

**VS Code**

- Enable `editor.formatOnSave`
- Ensure the Dart extension is installed

```json
{
  "editor.formatOnSave": true
}
```

## Code Style

- **Conventions:** Follow official [Dart](https://dart.dev/guides/language/effective-dart) and [Flutter](https://docs.flutter.dev/perf/best-practices) style conventions.
- **State Management:** Use **Riverpod** for all state management needs.
- **Separation of Concerns:** Keep UI logic out of repositories and services.

---

---

## Pull Requests

- Keep PRs focused and descriptive.
- Include screenshots or notes for UI changes.
- Address feedback promptly.

---

Thank you for helping!
