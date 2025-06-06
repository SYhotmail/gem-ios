// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "TransactionService",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "TransactionService",
            targets: ["TransactionService"]),
    ],
    dependencies: [
        .package(name: "Primitives", path: "../../Packages/Primitives"),
        .package(name: "Store", path: "../../Packages/Store"),
        .package(name: "Blockchain", path: "../../Packages/Blockchain"),
        .package(name: "ChainService", path: "../ChainService"),
        .package(name: "StakeService", path: "../StakeService"),
        .package(name: "BalanceService", path: "../BalanceService"),
        .package(name: "NFTService", path: "../NFTService"),
        .package(name: "GemstonePrimitives", path: "../../Packages/GemstonePrimitives"),
        .package(name: "JobRunner", path: "../../Packages/JobRunner"),
    ],
    targets: [
        .target(
            name: "TransactionService",
            dependencies: [
                "Primitives",
                "Store",
                "Blockchain",
                "ChainService",
                "StakeService",
                "BalanceService",
                "NFTService",
                "GemstonePrimitives",
                "JobRunner"
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "TransactionServiceTests",
            dependencies: ["TransactionService"]
        ),
    ]
)
