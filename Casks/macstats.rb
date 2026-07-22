# Homebrew cask for macstats (secondary distribution channel; VISION §3).
#
# Publish this to a tap (e.g. laboef1900/homebrew-tap) so users can:
#   brew install --cask laboef1900/tap/macstats
#
# @ai-note: `version` and `sha256` are updated by the release automation when a DMG is published.
# The `sha256 :no_check` placeholder must be replaced with the real DMG checksum per release.
cask "macstats" do
  version "0.11.3"
  sha256 "eb31788dc36aab185138538476b6ffe2b2cb45ee9d5b4f245c24450cc80e249c"

  url "https://github.com/laboef1900/macstats/releases/download/v#{version}/macstats-#{version}.dmg"
  name "macstats"
  desc "Lightweight native macOS menu bar system stats"
  homepage "https://github.com/laboef1900/macstats"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "macstats.app"

  zap trash: [
    "~/Library/Application Support/macstats",
  ]
end
