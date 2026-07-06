class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "0.2.1"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.2.1/coot_v0.2.1_darwin_arm64.tar.gz"
    sha256 "ea733fcc2cbf2b028f26021fa9d6e4a3877b3bee433afccc104b4f3badd7bf12"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.2.1/coot_v0.2.1_darwin_amd64.tar.gz"
    sha256 "175039c352cce2a3f27ae231600eec8c57229a1c606fa3d9ace019044ecffbb8"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
