class Xfade < Formula
  desc "Route AI providers for Claude Code / Codex / OpenCode / Pi / Oh My Pi / Aider / Cline, with local proxy"
  homepage "https://xfade.dev"
  version "0.8.2"
  license "MIT OR Apache-2.0"

  # This formula belongs to the standalone tap repo homebrew-xfade; the url/sha256 below are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.8.2/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "a1ca0fe1ee6d4fb818c2b1b69bdef32e41dc31b975e3aa1a834aeab7abba4518"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.8.2/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "020a0220b259270094972e75a7a7a781b50a766a0c0dc9600dafc044bd6f8da4"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
