// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "LumiKitReminder",
    platforms: [.macOS(.v14)],
    products: [
        .library(name: "KitReminder", targets: ["KitReminder"])
    ],
    dependencies: [
        .package(url: "https://github.com/CofficLab/LumiProviders.git", from: "1.18.0")
    ],
    targets: [
        .target(
            name: "KitReminder",
            dependencies: [
                .product(name: "ProviderStorage", package: "LumiProviders")
            ],
            path: "Sources/KitReminder"
        ),
        .testTarget(
            name: "KitReminderTests",
            dependencies: [
                "KitReminder",
                .product(name: "ProviderStorage", package: "LumiProviders")
            ],
            path: "Tests/KitReminderTests"
        )
    ]
)
