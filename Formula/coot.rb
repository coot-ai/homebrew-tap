class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.0.0/coot_v1.0.0_darwin_arm64.tar.gz"
    sha256 "e7db09460742d96e031d33f7046a20d8d0f68c43ad0089c194a4742e31abc874"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.0.0/coot_v1.0.0_darwin_amd64.tar.gz"
    sha256 "159a864ee468e18ec8df59021b6a6ef972ee380a46d3dc9ad1a0a70128983c26"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
