class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.15.0/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "16e21ea443c860cbe7e9586d7c9db620b2fffafb92a358ebd77495eee84683be"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.15.0/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "2fefa8109ec7839616757388efc4fa0a43afbac12376e49a06529b4a9f7bdbb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.15.0/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b6b158bf2067d03fd41c699b20d3f0857b4f40ac609fe5f11194e67e1aa52b9"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
