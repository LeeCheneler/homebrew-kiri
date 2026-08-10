class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.85.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.85.0/kiri"
  sha256 "3a8202312c9cc202598bc9062604f28a3b8b2e8e7924e37da144ea1680412eb8"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
