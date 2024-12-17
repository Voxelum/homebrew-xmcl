cask "xmcl" do
  version "0.47.15"
  sha256 :no_check
  url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.47.15/xmcl-0.47.15-arm64.dmg"
  name "X Minecraft Launcher"
  desc "An Open Source Minecraft Launcher with Modern UX. Provides a Disk Efficient way to manage all your Mods!"
  homepage "https://xmcl.app"

  livecheck do
    url :url
    strategy :header_match
  end

  app "X Minecraft Launcher.app"

  zap trash: [
    "/System/Volumes/Data/Applications/X Minecraft Launcher.app",
    "/Users/sylvanfranklin/Library/Application Support/xmcl",
    "/Users/sylvanfranklin/Library/Preferences/xmcl.plist",
    "/Users/sylvanfranklin/Library/Saved Application State/xmcl.savedState"
  ]
end
