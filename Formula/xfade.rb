class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.8/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "1802de0b8d4352cf2cb3173eb0cfe6eea87efa069b1c439cf3b167f77c5b02e2"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.8/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "cb0afd4927404dabdb135f5d898cae113989189e3e79136d963ddd1678a14d7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.8/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b66bf258fd029d8b14c0eb41dd17af829382b6d86efd8ee07532c98bb085765f"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
