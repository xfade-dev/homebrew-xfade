class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.6/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "da228761c02a807d5fba931e78e069a3e9756d0bb1d091c957c6fb27e4ec0a68"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.6/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "1fa2c83b1d0c29c285f7e3e0f2c0a84cd93cfe80031134e43ab0f85bd605f5fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.6/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8677d2edb50301944a59414334f2147f6405f473dfcb0433082c6cb7aa39cf8a"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
