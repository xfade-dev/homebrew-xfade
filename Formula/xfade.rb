class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.3/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "68050337cf106dc7c3bb3838c9a6375e14879068381f981c6d78a7e59bbb8be6"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.3/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "c151044bb970879ccb576faf6c2f697ce844aeb0370a410ba2757d6e79e7aead"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.3/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06af1ef60ca5ea31d51d562215caa965853347bcabe57ca7eb32f1a9d928a609"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
