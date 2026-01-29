class Ccx < Formula
  desc "CLI tool for managing multiple Claude Code settings profiles"
  homepage "https://github.com/tim80411/ccx"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tim80411/ccx/releases/download/v0.3.1/ccx-darwin-arm64"
      sha256 "6c6a7d0ccbe48d21862774135522dd2e4b54711bb1255f60378aa3fec15f1d27"

      def install
        bin.install "ccx-darwin-arm64" => "ccx"
      end
    end

    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.3.1/ccx-darwin-x64"
      sha256 "38a31b764fb42e2bcb5b4329fa3685f3485050516b81afc25d30c4d524e8d17a"

      def install
        bin.install "ccx-darwin-x64" => "ccx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.3.1/ccx-linux-x64"
      sha256 "819a77fa418a9d43d5a36d1fb0a3ea4415a9ca653400b491f31a40818f95696f"

      def install
        bin.install "ccx-linux-x64" => "ccx"
      end
    end
  end

  test do
    assert_match "ccx", shell_output("#{bin}/ccx --help")
  end
end
