cask "voce" do
  version "1.2.1"
  sha256 "daeda54275a58d1f82bd6e65b08fcb76da5b4776bcf217eef7dba77a65eb8d56"

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
