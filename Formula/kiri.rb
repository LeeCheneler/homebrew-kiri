class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.73.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.73.0/kiri"
  sha256 "f53c3cb9a6f86bc0816100665fa1f15d0b47479556846196edbf725b2ec2ca2e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
