class Xfade < Formula
  desc "Vendor-neutral, zero-raw-key gateway for AI coding CLIs"
  homepage "https://xfade.dev"
  license any_of: ["MIT", "Apache-2.0"]

  # This formula belongs to the standalone tap repo homebrew-xfade; url/sha256 are updated after each release.
  on_macos do
    on_arm do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.9/xfade-aarch64-apple-darwin.tar.gz"
      sha256 "73c660f4edbefe5b541545e6ab33071f9a4df019bfc6cd8511e9e0b90064eb49"
    end
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.9/xfade-x86_64-apple-darwin.tar.gz"
      sha256 "1050ac548e9f0c2794ccf148fa1ee55ef398aea5f90fbdd63ac92151ad16a9a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/xfade-dev/xfade/releases/download/v0.14.9/xfade-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e68b9687f7cdb530536789181427448f6f905348e9e056a9b70b403d5e36e40e"
    end
  end

  def install
    bin.install "xfade"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xfade --version")
  end
end
