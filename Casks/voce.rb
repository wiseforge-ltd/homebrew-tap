cask "voce" do
  version "1.0.2"
  sha256 "edb2eb72f8105b788971e7851d73c62c6cd64be970fc184b2066e9d11d498b79"

  url "https://wiseforge.co.uk/voce/Voce-#{version}.dmg"
  name "Voce"
  desc "On-device push-to-talk dictation"
  homepage "https://wiseforge.co.uk/voce.html"

  livecheck do
    url "https://wiseforge.co.uk/voce/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Voce.app"

  zap trash: [
    "~/Library/Application Support/co.uk.wiseforge.VoceMacOS",
    "~/Library/Caches/co.uk.wiseforge.VoceMacOS",
    "~/Library/Containers/co.uk.wiseforge.VoceMacOS",
    "~/Library/HTTPStorages/co.uk.wiseforge.VoceMacOS",
    "~/Library/Preferences/co.uk.wiseforge.VoceMacOS.plist",
  ]
end
