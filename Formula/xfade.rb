class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.13.4/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "c642d15eb608dd3c1a54b79ac34e108d9e8928df817ca52c8047c2ff3f9d5526"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.13.4/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "9e4ea34f72ff7d25b90222cabd9fa26857c498566bce8d3c7ab934cf0a1aa6ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.13.4/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f10c35afcaf364ab802cfd520adae0644eb3b886447a8ef38bb631e3698d7aa9"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
