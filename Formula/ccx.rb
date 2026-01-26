class Ccx < Formula
  desc "CLI tool for managing multiple Claude Code settings profiles"
  homepage "https://github.com/tim80411/ccx"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tim80411/ccx/releases/download/v0.2.0/ccx-darwin-arm64"
      sha256 "41a8c2a501fc1b27e6eb9244d8cf684e09dbfa451128ad09ca1bc8b898490667"

      def install
        bin.install "ccx-darwin-arm64" => "ccx"
      end
    end

    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.2.0/ccx-darwin-x64"
      sha256 "254f4e68009c42253e4c0d8b75b54e89fed1e816e2061df09d14194adee8a18a"

      def install
        bin.install "ccx-darwin-x64" => "ccx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.2.0/ccx-linux-x64"
      sha256 "ac0b000dde64d4005b7bcf105ff787b56cbfecd0cc004866ae68858295365631"

      def install
        bin.install "ccx-linux-x64" => "ccx"
      end
    end
  end

  test do
    assert_match "ccx", shell_output("#{bin}/ccx --help")
  end
end
