class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "1.1.3"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.1.3/coot_v1.1.3_darwin_arm64.tar.gz"
    sha256 "cd5c527c64f00504347dd8115d19d3896ada92662fafb8b757bf12ef9b05d95f"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.1.3/coot_v1.1.3_darwin_amd64.tar.gz"
    sha256 "05d57133a7d2b592123823c0be76387bc8e07e994596e9a848596aac9d39ea89"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
