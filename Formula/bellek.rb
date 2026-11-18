class Bellek < Formula
  desc "Shared memory for Claude Code sessions: hooks, MCP bridge and CLI"
  homepage "https://bellek.si"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/bellek-si/bellek/releases/download/v0.3.0/bellek-darwin-arm64.tar.gz"
      sha256 "f5dc342c8ae02b22933b541294aec459627796e938533911bf29c8f4b778d054"
    end
    on_intel do
      url "https://github.com/bellek-si/bellek/releases/download/v0.3.0/bellek-darwin-amd64.tar.gz"
      sha256 "03cb20b734d02a1392b771f75302fb2bd15d884ff1c065a9c66bab27fde3cda1"
    end
  end

  def install
    bin.install "bellek"
  end

  test do
    assert_equal "v0.3.0", shell_output("#{bin}/bellek version").strip
  end
end
