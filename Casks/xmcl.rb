cask "xmcl" do
  version "0.50.3"
  sha256 :no_check
  arch arm: "arm64", intel: "x86_64"

  on_arm do 
    url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.50.3/xmcl-0.50.3-arm64.dmg"
  end

  on_intel do
    url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.50.3/xmcl-0.50.3-x64.dmg"
  end

  name "X Minecraft Launcher"
  desc "An Open Source Minecraft Launcher with Modern UX. Provides a Disk Efficient way to manage all your Mods!"
  homepage "https://xmcl.app"

  livecheck do
    url :url
    strategy :header_match
  end
  
  app "X Minecraft Launcher.app"

  zap trash: [
    "~/Applications/X Minecraft Launcher.app",
    "~/Library/Application Support/xmcl",
    "~/Library/Preferences/xmcl.plist",
    "~/Library/Saved Application State/xmcl.savedState"
  ]
end
