class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "1.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.1.0/coot_v1.1.0_darwin_arm64.tar.gz"
    sha256 "67330af70b677564b133ee4607970fe803a4fe52845df02077d3c23e70d465d5"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.1.0/coot_v1.1.0_darwin_amd64.tar.gz"
    sha256 "c2e70c7284e34ed5bc3ebddac797df43f01efe8a7b7fe945732353276e639317"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
