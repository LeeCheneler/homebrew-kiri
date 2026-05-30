class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.22.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.22.1/kiri"
  sha256 "1e3eaee2625f28fc31399003a144cbf36c3e43bbc6dad4f486887c818be47e91"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
