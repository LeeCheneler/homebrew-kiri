class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.80.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.80.0/kiri"
  sha256 "0eeb5353195364ae46853045a0d281a8ca946296888c681492f637a5aa4e7873"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
