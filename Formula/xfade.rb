class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.12.4/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "1f0e2390c39fdfa7c35796f715e865c7c287199a1b2d0c75a759214186c2f22d"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.12.4/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "07105025b1285ef080f875889a1293e600d3ec73e4cc0161f3ece7048345cb1b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.12.4/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "09fc24d427f591a435b04c48aedf14558c29f036365c2cc13d46ae252b039445"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
