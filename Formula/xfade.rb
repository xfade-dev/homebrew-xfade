class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.0/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "f46868338addd77863ae92daa2295c7a58547b4de6d1424ff5a1a687354a53b0"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.0/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "76ee1d63573929acdde52e4c29155f671ac8eb8aabe0525f07bc7cc6fd5ceca3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.0/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24e780f62b2e489795b7a4c27e94f17008e14cfd11a1586a1990a542bdae57eb"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
