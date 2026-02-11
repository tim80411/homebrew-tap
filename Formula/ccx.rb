class Ccx < Formula
  desc "CLI tool for managing multiple Claude Code settings profiles"
  homepage "https://github.com/tim80411/ccx"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tim80411/ccx/releases/download/v0.5.0/ccx-darwin-arm64"
      sha256 "c26a0ebe8684c01af785117fc93b7131212862481441bc6c12ccd0f65859f116"

      def install
        bin.install "ccx-darwin-arm64" => "ccx"
      end
    end

    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.5.0/ccx-darwin-x64"
      sha256 "3bd04551b8717707e908ac79537e644f20fc4061b111bf6a1f9f08f0c27d9a03"

      def install
        bin.install "ccx-darwin-x64" => "ccx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.5.0/ccx-linux-x64"
      sha256 "a9330454712d7b9595ca0d2ca7ff07af756398585e50d5d755291622c92e8401"

      def install
        bin.install "ccx-linux-x64" => "ccx"
      end
    end
  end

  test do
    assert_match "ccx", shell_output("#{bin}/ccx --help")
  end
end
