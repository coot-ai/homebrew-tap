class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.0.0/coot_v1.0.0_darwin_arm64.tar.gz"
    sha256 "c82f6b28589a14e86a557865f64a1a01af68b13578de66577f30a6398134d55b"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.0.0/coot_v1.0.0_darwin_amd64.tar.gz"
    sha256 "b8b2fb1cdfa2f302b47f576a34a78bd542e9355ef853241507ebc6119d8d0149"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
