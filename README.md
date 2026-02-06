# Starter iOS App (SwiftUI)

This repository provides a starter iOS application scaffolded with Apple-recommended best practices and a clean SwiftUI + MVVM architecture.

## What's Included

- **SwiftUI app lifecycle** with a simple `ContentView` + `HomeViewModel`.
- **MVVM pattern** to keep views declarative and business logic separated.
- **Swift Concurrency** (async/await) to keep UI responsive.
- **Accessibility-first** UI with semantic fonts, button styles, and accessibility hints.
- **Asset catalogs** for app icons and preview assets.
- **Xcode project** ready to open and run.

## Apple-Recommended Best Practices (Applied Here)

1. **Use SwiftUI for new UI**: SwiftUI is Apple's preferred framework for modern iOS UI. The app uses `@main` with the SwiftUI App lifecycle.
2. **Adopt MVVM for separation of concerns**: Views are pure UI; `HomeViewModel` manages state and async logic.
3. **Prefer Swift Concurrency**: Async updates use `Task` + `async` functions to keep work off the main thread while updating UI on the main actor.
4. **Keep UI accessible**: Use semantic fonts, `foregroundStyle(.secondary)` for contrast, and accessibility hints for controls.
5. **Use asset catalogs**: Assets are stored in `.xcassets` to support multiple sizes and system optimizations.
6. **Localize and format user-facing content**: Date formatting uses `Date.formatted` (local-aware) and strings are short, user-focused.
7. **Use SwiftUI previews**: `#Preview` is included for rapid iteration and visual testing.

## Project Structure

```
StarterApp/
├─ StarterAppApp.swift
├─ ContentView.swift
├─ HomeViewModel.swift
├─ Info.plist
├─ Assets.xcassets/
└─ Preview Content/
StarterApp.xcodeproj/
```

## Requirements

- Xcode 15 or later
- iOS 16+ deployment target

## Running the App

1. Open the project in Xcode:

   ```bash
   open StarterApp.xcodeproj
   ```

2. Select an iOS Simulator (or connected device).
3. Press **Run** (▶︎) or use **⌘R**.

## Testing the App

You can run tests from Xcode (⌘U). For CLI-based testing:

```bash
xcodebuild \
  -project StarterApp.xcodeproj \
  -scheme StarterApp \
  -destination 'platform=iOS Simulator,name=iPhone 15' \
  test
```

> Note: If you do not have a simulator installed, choose an available one with:
>
> ```bash
> xcrun simctl list devices
> ```

## Next Steps

- Add unit tests in a `StarterAppTests` target.
- Add UI tests in a `StarterAppUITests` target.
- Configure signing by setting your Development Team in Xcode.
- Introduce dependency injection for services (e.g., networking, analytics).
