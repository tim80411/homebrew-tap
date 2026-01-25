class Ccx < Formula
  desc "CLI tool for managing multiple Claude Code settings profiles"
  homepage "https://github.com/tim80411/ccx"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tim80411/ccx/releases/download/v0.1.1/ccx-darwin-arm64"
      sha256 "cd94a503815627db2501c95d4592a9ab403b13423e1f06e527bc45278a9e08a4"

      def install
        bin.install "ccx-darwin-arm64" => "ccx"
      end
    end

    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.1.1/ccx-darwin-x64"
      sha256 "64e2590b5368cb8cc3666d535d78c7efd280b99dc9122f091a935e57f4284bcd"

      def install
        bin.install "ccx-darwin-x64" => "ccx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.1.1/ccx-linux-x64"
      sha256 "8e41b095dca9bb362e5937eec1013c293038fb64a59e97b78f891a57c57db973"

      def install
        bin.install "ccx-linux-x64" => "ccx"
      end
    end
  end

  test do
    assert_match "ccx", shell_output("#{bin}/ccx --help")
  end
end
