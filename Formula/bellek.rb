class Bellek < Formula
  desc "Shared memory for Claude Code sessions: hooks, MCP bridge and CLI"
  homepage "https://bellek.si"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/bellek-si/bellek/releases/download/v0.6.0/bellek-darwin-arm64.tar.gz"
      sha256 "48e4a9ca0843f39505fdfa6bb174f0be41513daf44de0c35980bdb33b89d6d8c"
    end
    on_intel do
      url "https://github.com/bellek-si/bellek/releases/download/v0.6.0/bellek-darwin-amd64.tar.gz"
      sha256 "45df50667d12ce70f921ef16f488be0ae3463ddc5f62f6b4e91c1c7070134a7e"
    end
  end

  def install
    bin.install "bellek"
  end

  test do
    assert_equal "v0.6.0", shell_output("#{bin}/bellek version").strip
  end
end
