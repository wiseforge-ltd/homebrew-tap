cask "voce" do
  version "1.1.3"
  sha256 "b4064092769ce56b926579212141544c8778e71b86dac68f77676a59b0ba3a75"

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
