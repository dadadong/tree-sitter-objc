// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "TreeSitterOBJC",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterOBJC",
                 targets: ["TreeSitterOBJC"]),
    ],
    targets: [
        .target(name: "TreeSitterOBJC",
                path: "./",
                exclude: [
                    "Cargo.toml",
                    "binding.gyp",
                    "bindings/node",
                    "bindings/rust",
                    "grammar.js",
                    "package.json",
                    "test",
                    "examples",
                    "README.md",
                    "TODO.md",
                    ".github",
                    ".gitignore",
                ],
                sources: [
                    "src/parser.c",
                ],
                resources: [
                    .copy("queries"),
                ],
                publicHeadersPath: "./bindings/swift/TreeSitterOBJC",
                cSettings: [.headerSearchPath("src")]
               ),
    ]
)
