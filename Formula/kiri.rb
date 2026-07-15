class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.64.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.64.0/kiri"
  sha256 "724b574c58642f000b7cd347500f59035477a0bea1e6cf29f94dbbcc3abce7da"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
