# Homebrew cask for Exif Stamp.
#
#   brew install --cask --no-quarantine laboef1900/tap/exif-stamp
cask "exif-stamp" do
  version "1.1.0"
  sha256 "698f66fab31ff656f8a4bafba6f4735c726928c87999020e9c3c2d2663e939e6"

  url "https://github.com/laboef1900/exif-stamp/releases/download/v#{version}/Exif.Stamp.dmg"
  name "Exif Stamp"
  desc "Stamp EXIF capture dates onto photos selected in Capture One"
  homepage "https://github.com/laboef1900/exif-stamp"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Exif Stamp.app"

  zap trash: [
    "~/Library/Scripts/Capture One Scripts/Exif Stamp.scpt",
    "~/Library/Preferences/app.captureonedate.CaptureOneDatePlugin.plist",
  ]

  caveats <<~EOS
    Exif Stamp is unsigned. Install with --no-quarantine, or on first launch
    right-click the app → Open.

    RAW writeback needs ExifTool:  brew install exiftool
  EOS
end
