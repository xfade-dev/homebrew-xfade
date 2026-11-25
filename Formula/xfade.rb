class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.13.5/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "6e0eb8b36b1703c955bb620deca899e3578852190ca96cfef35625adb8148f40"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.13.5/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "1259b49d67a6126b7e2105ccfe78aa4f06a58ad9e33a948a08fb56d4b48ab35f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.13.5/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32878f2564d7de361cfd2c8df8a49299e40777a9826fb9b066d8e18f2014f4b3"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
