class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "1.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.1.1/coot_v1.1.1_darwin_arm64.tar.gz"
    sha256 "22102ca10cbbcb3a9b2cf9c004386e2cf939fafdee0e70f64768adcf77f505fd"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.1.1/coot_v1.1.1_darwin_amd64.tar.gz"
    sha256 "5807c81d8bcd09b2ff6e657d7ac351df18d312a287958151b379dedf0b41ad6f"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
