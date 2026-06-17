class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.34.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.34.0/kiri"
  sha256 "608d51f6a73d30fe9b0015c37b3c822e03fcea90a443e31c8f473a8668d0bc54"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
