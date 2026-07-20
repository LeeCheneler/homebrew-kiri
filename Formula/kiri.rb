class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.66.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.66.1/kiri"
  sha256 "cb614d78858159b2914382c6c1a358329f167755ded87333864b0fb086b8f8c2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
