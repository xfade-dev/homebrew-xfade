class Xfade < Formula
  desc "Route AI providers for Claude Code / Codex / OpenCode / Pi / Oh My Pi / Aider / Cline / Hermes / OpenClaw, with local proxy"
  homepage "https://xfade.dev"
  version "0.8.3"
  license "MIT OR Apache-2.0"

  # This formula belongs to the standalone tap repo homebrew-xfade; the url/sha256 below are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.8.3/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "886f3851a71f856b7a1b3c84cb2d6358219e932841e13a2dbcc9059e530b8763"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.8.3/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "cd38f4d0a5cd4615e0db9973727d6beadb0f1888b0a04eca68ce4d475807f3ed"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
