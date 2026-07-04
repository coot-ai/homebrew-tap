class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.1.0/coot_v0.1.0_darwin_arm64.tar.gz"
    sha256 "c399b0b3c290f019c51eff93320ad2cb04128d5822b06cd34cd786328939997c"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.1.0/coot_v0.1.0_darwin_amd64.tar.gz"
    sha256 "843093fb58267c293b395122d6dc743affe39f8eeb10ec9a2673e6646f355f1b"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
