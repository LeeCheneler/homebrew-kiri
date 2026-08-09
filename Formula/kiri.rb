class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.82.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.82.0/kiri"
  sha256 "d85d38d5e6546ee70be259e2787597858d4808b56faab88fee3f072b1a3160d2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
