# Homebrew cask for Exif Stamp.
#
#   brew install --cask --no-quarantine laboef1900/tap/exif-stamp
cask "exif-stamp" do
  version "1.1.1"
  sha256 "0f14dce441b4e43130f024fae688d91d2c232789470a7cd790a080af932166a4"

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
    Exif Stamp is self-signed, not notarized. Install with --no-quarantine,
    or on first launch right-click the app → Open.

    RAW writeback needs ExifTool:  brew install exiftool
  EOS
end
