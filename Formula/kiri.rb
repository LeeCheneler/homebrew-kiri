class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.35.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.35.0/kiri"
  sha256 "8397e74e3c03d760cdb6084b5f729f9ece6a5c0694ebe8c943c068b6d014d4be"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
