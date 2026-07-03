cask "voce" do
  version "1.2.0"
  sha256 "3e66dacc0155ae54d7f13e5856d702db4a35d336536f52e91e5a5fe4cde23b3c"

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
