class Xfade < Formula
  desc "Route AI providers for Claude Code / Codex / OpenCode / Pi / Oh My Pi / Aider / Cline, with local proxy"
  homepage "https://xfade.dev"
  version "0.8.1"
  license "MIT OR Apache-2.0"

  # This formula belongs to the standalone tap repo homebrew-xfade; the url/sha256 below are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.8.1/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "535191d6f3338f470e07ce238449708bdb79866390d00c8ab1434d9b30fb084b"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.8.1/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "763106d0861970f4bef3ca2f2d8620491b167b7e31634d3960eecfc4e02c554d"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
