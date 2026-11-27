class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.7/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "f1890b70fd551bdc0a1da3d97c20f2c57dc29961ffc7201ed1102a107f8b7bb1"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.7/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "b65c0f13c26653a37df884bdbb8adbf6f80411c14de9ef992d9a72affeee5d8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.7/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4c7f7c98f4c9de47940c8d7177138cdcc883e3ae288f9aeda457e37df16a38f"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
