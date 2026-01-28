class Ccx < Formula
  desc "CLI tool for managing multiple Claude Code settings profiles"
  homepage "https://github.com/tim80411/ccx"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tim80411/ccx/releases/download/v0.3.0/ccx-darwin-arm64"
      sha256 "42d0c70fd063c9555c617cdbb3ddd1e5bdec816aee809aee667c211b9e5acb8b"

      def install
        bin.install "ccx-darwin-arm64" => "ccx"
      end
    end

    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.3.0/ccx-darwin-x64"
      sha256 "f55211c7f0ce7addc445a47d7c769bfb3680bda2e284f1e468daf4c9d58773fa"

      def install
        bin.install "ccx-darwin-x64" => "ccx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.3.0/ccx-linux-x64"
      sha256 "8bbb44a2e60e1e1c47ec991aed0471d48909c4a1ebdbd9bbe8abf8613381493c"

      def install
        bin.install "ccx-linux-x64" => "ccx"
      end
    end
  end

  test do
    assert_match "ccx", shell_output("#{bin}/ccx --help")
  end
end
