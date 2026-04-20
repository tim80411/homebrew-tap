cask "tunnelbox" do
  version "1.3.5"
  sha256 "d23c1d4d0a60e2089bfde96e0fb8d3f2212317c648f25f7199fb7fc2b08a088e"

  url "https://github.com/tim80411/tunnelbox/releases/download/v#{version}/TunnelBox-#{version}-mac-universal.dmg"
  name "TunnelBox"
  desc "Local static website management desktop application"
  homepage "https://github.com/tim80411/tunnelbox"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TunnelBox.app"

  zap trash: [
    "~/Library/Application Support/TunnelBox",
    "~/Library/Logs/TunnelBox",
    "~/Library/Preferences/com.tunnelbox.app.plist",
    "~/Library/Saved Application State/com.tunnelbox.app.savedState",
  ]
end
