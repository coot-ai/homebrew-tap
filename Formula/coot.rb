class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.1.0/coot_v0.1.0_darwin_arm64.tar.gz"
    sha256 "67284cf177e102ffd1a3b363a4a1c08dfd5cb944e80eede0588d7010c8fb479b"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.1.0/coot_v0.1.0_darwin_amd64.tar.gz"
    sha256 "e0e31eaffb5be7a55ff39255fc13281ec49b72ba8702c3fe25c0aee9dec643e3"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
