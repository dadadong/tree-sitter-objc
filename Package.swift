// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "TreeSitterOBJC",
    products: [
        .library(name: "TreeSitterOBJC",
                 type: .dynamic,
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
    ],
    cLanguageStandard: .c99
)
