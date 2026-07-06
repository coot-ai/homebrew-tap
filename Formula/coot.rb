class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "0.2.0"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.2.0/coot_v0.2.0_darwin_arm64.tar.gz"
    sha256 "b1ac591020d10dcb2dd6cc36ee35a4fc6e4afae54fe9a174a5f1eeb2ea111d00"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.2.0/coot_v0.2.0_darwin_amd64.tar.gz"
    sha256 "81e503cb2ce980b8442aa665053587dd4066072f6d46c95fc03438397452b3ae"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
