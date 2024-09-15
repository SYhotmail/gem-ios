list:
    just --list

install: install-typeshare install-toolchains install-swifttools

install-typeshare:
    @echo "==> Install typeshare-cli"
    just core install-typeshare

install-toolchains:
    @echo "==> Install toolchains for uniffi"
    @cd core && just gemstone install-nightly

install-swifttools:
    @echo "==> Install SwiftGen and SwiftFormat"
    @brew install swiftgen swiftformat

bootstrap: install generate
    @echo "<== Bootstrap done."

setup-git:
    @echo "==> Setup git submodules"
    @git submodule update --init --recursive
    @git config submodule.recurse true

core-upgrade:
    git submodule update --recursive --remote

test:
    @set -o pipefail && xcodebuild -project Gem.xcodeproj \
    -scheme Gem \
    -sdk iphonesimulator \
    -destination "platform=iOS Simulator,name=iPhone 15" \
    test | xcbeautify

localize:
    @sh core/scripts/localize.sh ios Gem/Resources
    just generate-model
    just generate-swiftgen

generate: generate-model generate-stone generate-swiftgen

generate-model:
    @echo "==> Generate typeshare for iOS"
    @cd core && cargo run --package generate --bin generate ios ../Packages

generate-swiftgen:
    @echo "==> SwiftGen assets and Localizable.strings"
    @swiftgen config run --quiet

export BUILD_MODE := env_var_or_default("BUILD_MODE","")

generate-stone:
    @./scripts/generate-stone.sh $BUILD_MODE

mod core
