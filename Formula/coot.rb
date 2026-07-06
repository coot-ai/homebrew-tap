class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "0.2.1"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.2.1/coot_v0.2.1_darwin_arm64.tar.gz"
    sha256 "07dd4362c964e88bc1c055ddee38b8539658730f0f2321ada6711df3493c0078"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v0.2.1/coot_v0.2.1_darwin_amd64.tar.gz"
    sha256 "c96cac68d1257bdf0780220c42c94cd39e104726e1bcf1c5043c5fc6590f2be6"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
