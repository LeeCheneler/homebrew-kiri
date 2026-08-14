class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.87.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.87.0/kiri"
  sha256 "2c3f8715714d38ec01a82d266028aff7d7cb2efacab45458f99be257dc9abb43"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
