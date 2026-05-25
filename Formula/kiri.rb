class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.18.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.18.0/kiri"
  sha256 "81fa8ab4dcd98dc4096a36f23f2f0cb4ac39f4428a78d7b7733470eb52d82716"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
