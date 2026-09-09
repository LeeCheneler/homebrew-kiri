class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.110.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.110.0/kiri"
  sha256 "3c0157e1126f784548370550c45647ce3e3aa4c3f7e1094f0e2230f9fd01a63e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
