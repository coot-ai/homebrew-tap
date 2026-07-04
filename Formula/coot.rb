class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "1.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.1.2/coot_v1.1.2_darwin_arm64.tar.gz"
    sha256 "0dc6b205e8cad5b952d61354b67b3d70e0f191b0728ba23b0c889ec80608fad9"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.1.2/coot_v1.1.2_darwin_amd64.tar.gz"
    sha256 "06a648444bce7929ab099337c86719eb38e53db2f92a27bf22ac958729763e2b"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
