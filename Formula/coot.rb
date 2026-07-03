class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.0.0/coot_v1.0.0_darwin_arm64.tar.gz"
    sha256 "9e988f9cf84b6b96ff8b31e0d70817e25a145b27211391efff78e752d7a39c0f"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.0.0/coot_v1.0.0_darwin_amd64.tar.gz"
    sha256 "ea8b775d5f92df7e0a04772eb586a2e3e799419e2f70e1b6a4eca51c4d8cd5ee"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
