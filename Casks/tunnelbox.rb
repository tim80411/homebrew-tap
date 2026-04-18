cask "tunnelbox" do
  version "1.3.2"
  sha256 "f63da7d629b8cdcbfcbca0d69ab1240a3bb0d25baa0d2a9023cb40b4c768f283"

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
