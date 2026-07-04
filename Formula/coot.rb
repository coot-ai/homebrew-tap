class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.1.0/coot_v0.1.0_darwin_arm64.tar.gz"
    sha256 "27d31f69594274d425fb2a58ed157f28bb3d0782aefd4e96c9b2b3b1329d5447"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.1.0/coot_v0.1.0_darwin_amd64.tar.gz"
    sha256 "9849bdd01e8c55377095d01eb8a6b6e6092f3da87bbd19532f15b6b721b0038f"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
