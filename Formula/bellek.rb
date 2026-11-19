class Bellek < Formula
  desc "Shared memory for Claude Code sessions: hooks, MCP bridge and CLI"
  homepage "https://bellek.si"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/bellek-si/bellek/releases/download/v0.5.0/bellek-darwin-arm64.tar.gz"
      sha256 "303addbc9102fa93b5b41ed378596d10213b3a6fce7880eecb787ab7c0291d4d"
    end
    on_intel do
      url "https://github.com/bellek-si/bellek/releases/download/v0.5.0/bellek-darwin-amd64.tar.gz"
      sha256 "1c665237e73331bd1827e8fd43c5810221d6ac35dff920b9b83f240507999d24"
    end
  end

  def install
    bin.install "bellek"
  end

  test do
    assert_equal "v0.5.0", shell_output("#{bin}/bellek version").strip
  end
end
