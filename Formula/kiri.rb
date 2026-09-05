class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.102.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.102.0/kiri"
  sha256 "7eb79d13a55c62cffb64c62c48d79d8b35aece397f9b58fcd0fd09891acbc167"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
