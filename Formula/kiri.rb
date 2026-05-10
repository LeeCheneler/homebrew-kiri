class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.5.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.5.1/kiri"
  sha256 "0e04d695a5aaf9034749594b06f9e78be184e7101a2f5b837d913df26177d751"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
