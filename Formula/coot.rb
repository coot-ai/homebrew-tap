class Coot < Formula
  desc "Package Codex/Claude-built iOS apps for device testing, anywhere."
  homepage "https://coot.dev"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.0.0/coot_v1.0.0_darwin_arm64.tar.gz"
    sha256 "340c22835a6d060d8f6f78378d639eef7f94a127c20a0c0784ff4214694a8592"
  else
    url "https://github.com/coot-ai/coot-cli/releases/download/v1.0.0/coot_v1.0.0_darwin_amd64.tar.gz"
    sha256 "a7608cd6f893901676aafa9b3ad441021782bd66599887a1fca093790fd0f139"
  end

  def install
    bin.install "coot"
  end

  test do
    assert_match "coot", shell_output("#{bin}/coot help")
  end
end
