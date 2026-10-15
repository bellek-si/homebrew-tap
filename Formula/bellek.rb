class Bellek < Formula
  desc "Shared memory for Claude Code sessions: hooks, MCP bridge and CLI"
  homepage "https://bellek.si"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/bellek-si/bellek/releases/download/v0.1.0/bellek-darwin-arm64.tar.gz"
      sha256 "b6d9da96ddf60dac533609566766f64c57bc49b8fed1882310b2a57971c86bad"
    end
    on_intel do
      url "https://github.com/bellek-si/bellek/releases/download/v0.1.0/bellek-darwin-amd64.tar.gz"
      sha256 "d490ea62e28255b56dae81a66f222f61645798e304ab9c057ba3a0e00c7ecc0b"
    end
  end

  def install
    bin.install "bellek"
  end

  test do
    assert_equal "v0.1.0", shell_output("#{bin}/bellek version").strip
  end
end
