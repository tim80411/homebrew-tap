class Ccx < Formula
  desc "CLI tool for managing multiple Claude Code settings profiles"
  homepage "https://github.com/tim80411/ccx"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tim80411/ccx/releases/download/v0.4.0/ccx-darwin-arm64"
      sha256 "cf67a3cd7694198855c27883e813b335cd680165857fd12e8ddfb433b785ba25"

      def install
        bin.install "ccx-darwin-arm64" => "ccx"
      end
    end

    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.4.0/ccx-darwin-x64"
      sha256 "f30615ae9b9dcc736cd48f5fcd17b2a40a71c312e55edfce7d301d4784dc198b"

      def install
        bin.install "ccx-darwin-x64" => "ccx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tim80411/ccx/releases/download/v0.4.0/ccx-linux-x64"
      sha256 "2a58073ee4b9bc8d7d3af567df9c2704806453340a7f1fab2149c97dbf5e1b0f"

      def install
        bin.install "ccx-linux-x64" => "ccx"
      end
    end
  end

  test do
    assert_match "ccx", shell_output("#{bin}/ccx --help")
  end
end
