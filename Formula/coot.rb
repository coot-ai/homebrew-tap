class Coot < Formula
  desc "iOS build and upload CLI"
  homepage "https://coot.dev"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.0.0/coot_v1.0.0_darwin_arm64.tar.gz"
    sha256 "0720cb28e33baaa4f3429ebead723a8421c704aa8cd3a21c7718ccb439f96046"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.0.0/coot_v1.0.0_darwin_amd64.tar.gz"
    sha256 "df4a38f141e59ef40d260ba48c7389c7c6c783edd619635d6260650226ee0299"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
