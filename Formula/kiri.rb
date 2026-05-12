class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.10.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.10.0/kiri"
  sha256 "2e179ae80764c4185e8478be55cfa9e26629e2ebb0ba4974c00821793f7d58c9"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
