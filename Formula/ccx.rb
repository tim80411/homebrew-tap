class Ccx < Formula
  desc "CLI tool for managing multiple Claude Code settings profiles"
  homepage "https://github.com/tim80411/ccx"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tim80411/ccx/releases/download/v1.0.0/ccx-darwin-arm64"
      sha256 "171aefa7bdd054482138f5ff55cffcdb84a1fb15fea2c6c7da699a7863dc821d"

      def install
        bin.install "ccx-darwin-arm64" => "ccx"
      end
    end

    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v1.0.0/ccx-darwin-x64"
      sha256 "062f94564557782dd98a6a906e093398df0752d9e43333563cae5747fedc1a59"

      def install
        bin.install "ccx-darwin-x64" => "ccx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v1.0.0/ccx-linux-x64"
      sha256 "84a7f966c404b6fca00ba7c1731fc415807c53042c57a3031633a6c96d6f364f"

      def install
        bin.install "ccx-linux-x64" => "ccx"
      end
    end
  end

  test do
    assert_match "ccx", shell_output("#{bin}/ccx --help")
  end
end
