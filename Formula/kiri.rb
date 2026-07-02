class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.51.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.51.0/kiri"
  sha256 "7f12dc7559f08d3715750c9611696a7e758f092be832e33ee24bd7f39ce0a015"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
