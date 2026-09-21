class Xfade < Formula
  desc "Route AI providers for Claude Code / Codex / OpenCode / Pi / Oh My Pi / Aider / Cline, with local proxy"
  homepage "https://xfade.dev"
  version "0.8.0"
  license "MIT OR Apache-2.0"

  # This formula belongs to the standalone tap repo homebrew-xfade; the url/sha256 below are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.8.0/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "159c0756b2b1d2885e1ac8fd1eee0a840b424b8424dfbbd9f12eeac50768598e"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.8.0/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "366ec50f0fd8c71617ff34225b56a375aece960e00d8220cea5cf6b8173af6a4"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
