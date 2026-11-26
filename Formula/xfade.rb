class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.2/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "7ff108d2d4e5b4000c4a1d30f8f5ca1a8cb66571d61e79e3581928b34f99e9fd"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.2/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "a6e9d6a5da1369ab020f64e71f34f2b7d651d29619edd9c4aa185f5c984a2bda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.2/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cddd322a08d905d31d430f478309e8eaadac119c659aa9031461ebacb0385e67"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
