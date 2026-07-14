cask "voce" do
  version "1.3.0"
  sha256 "073dd720934a8827c5863e372843916ba06723cb4903ab61eb3e367027421a76"

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
