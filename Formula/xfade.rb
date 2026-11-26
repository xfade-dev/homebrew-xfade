class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.1/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "426acfe7c23ff6c06e4eb53463c2b727555d20790a289cd66638d2f54efada87"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.1/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "87ee0ab24f044973626404227de4894e2bbf75804d1bb9074b9a92e4529d7e0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.1/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9ef68237a53ec5e1caaf4509850bcb210c27b6432117d1daadf1a8b4c1aae913"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
