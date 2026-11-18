class Bellek < Formula
  desc "Shared memory for Claude Code sessions: hooks, MCP bridge and CLI"
  homepage "https://bellek.si"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/bellek-si/bellek/releases/download/v0.4.0/bellek-darwin-arm64.tar.gz"
      sha256 "fa8b8300de49a92c7fee040c9347f50da7a5fc8ef69b06e9279fe35c0d7a2351"
    end
    on_intel do
      url "https://github.com/bellek-si/bellek/releases/download/v0.4.0/bellek-darwin-amd64.tar.gz"
      sha256 "99bad9c3b5bdd37e4e7ca3dffdd562573b31395e7b2a8ef7e8e5cf168b6c137d"
    end
  end

  def install
    bin.install "bellek"
  end

  test do
    assert_equal "v0.4.0", shell_output("#{bin}/bellek version").strip
  end
end
