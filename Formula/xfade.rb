class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.13.3/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "c5125b227a0c047db9e00f3f8a39ab2d3fee2e9f7fce08a902fece7b10c746d3"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.13.3/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "8c581903c9638c9cc7008151c3fe4dabe0e8f7f18720f4733217d6e0258f38f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.13.3/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0384eb2cd45b16e7d7699dd64d8715f7a972cbe28daf8eb549ca484eb5dab4e1"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
