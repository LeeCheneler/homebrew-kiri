class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.101.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.101.0/kiri"
  sha256 "464be6012f6c2c7e4a7d914abb0fad5938e6fda7a8cc4082eb38169882e1a23d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
