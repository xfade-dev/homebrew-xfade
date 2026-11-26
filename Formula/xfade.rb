class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.4/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "771496001bfd4891cb2a0616bce5c0cd24cd6971a0bc92c5ad7aeadae65a3866"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.4/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "3a3113bf05a309d404db3678cfbdf27d09e76661afe35de54420277063be6386"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.4/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb6e1f6550cab0656c9a2aab5875fd611365fd64e35274634d7b662a4b2e91d1"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
