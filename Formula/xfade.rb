class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.0/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "5c631b5709fd5522ca936696da91b337c7783ce17022b11e6051d9dea7f3dd7d"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.0/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "752602e61db6e2475dda052874bd3f5cd69cc94cd20923e925344e11391a20fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.0/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4835d8daf8d5ca4b6d92dae99ef4fac4bf829d90b90a4af51a826f49236d613"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
