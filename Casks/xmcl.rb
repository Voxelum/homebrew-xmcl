cask "xmcl" do
  version "0.67.0"
  sha256 :no_check
  arch arm: "arm64", intel: "x86_64"

  on_arm do 
    url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.67.0/xmcl-0.67.0-arm64.dmg"
  end

  on_intel do
    url "https://github.com/Voxelum/x-minecraft-launcher/releases/download/v0.67.0/xmcl-0.67.0-x64.dmg"
  end

  name "XMCL"
  desc "An Open Source Minecraft Launcher with Modern UX. Provides a Disk Efficient way to manage all your Mods!"
  homepage "https://xmcl.app"

  livecheck do
    url :url
    strategy :header_match
  end
  
  app "XMCL.app"

  zap trash: [
    "~/Applications/XMCL.app",
    "~/Library/Application Support/xmcl",
    "~/Library/Preferences/xmcl.plist",
    "~/Library/Saved Application State/xmcl.savedState"
  ]
end
