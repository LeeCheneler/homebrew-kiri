class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.97.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.97.0/kiri"
  sha256 "a45ea3c4c1eb1069e0ffbc556d5ee36b19f5c93843beab2a6c2771e4823d3d56"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
