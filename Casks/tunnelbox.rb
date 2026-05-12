cask "tunnelbox" do
  version "1.4.0"
  sha256 "7fd6c5fd88714620869c372fe93c859d30aade9970b733e7c82e35d763eb7dd2"

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
