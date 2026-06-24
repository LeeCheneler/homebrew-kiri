class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.46.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.46.0/kiri"
  sha256 "76500c8dea543cc4a6f5cc7d17e4d432c569e0ac94a061c3409dc6135a685911"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
