class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "0.2.1"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.2.1/coot_v0.2.1_darwin_arm64.tar.gz"
    sha256 "1e90d7b44a0a4a268d1e1308d0ea3388f2e0b09d4009ada4c5c331dc94bc2cca"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.2.1/coot_v0.2.1_darwin_amd64.tar.gz"
    sha256 "80b344cc1aad16d0dc8c61da25f0c836938b3095e7120b3298fcbbcc806777b7"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
