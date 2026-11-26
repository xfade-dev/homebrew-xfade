class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.5/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "38376dae2083d47f24ed8724b6c8253ef1fcf29b8396d25c8a260ae137b71ea8"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.5/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "32c32fb22914eb346b4975f69e28252a69ce00ab0108335c954e8d362dfe9360"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.5/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9f69244a28a432515145b1a1ff9c670153449de33068552949aa98ea5f2347b"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
