class Bellek < Formula
  desc "Shared memory for Claude Code sessions: hooks, MCP bridge and CLI"
  homepage "https://bellek.si"
  license "Apache-2.0"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/bellek-si/bellek/releases/download/v0.2.0/bellek-darwin-arm64.tar.gz"
      sha256 "3a3d372527a24796dbe29f6ad867dee855fd5aca3e65d1e257fcd85e25c35191"
    end
    on_intel do
      url "https://github.com/bellek-si/bellek/releases/download/v0.2.0/bellek-darwin-amd64.tar.gz"
      sha256 "48b886388045c21b84a74e7914662357796972994756ab1ce66f9b4c49f965e2"
    end
  end

  def install
    bin.install "bellek"
  end

  test do
    assert_equal "v0.2.0", shell_output("#{bin}/bellek version").strip
  end
end
