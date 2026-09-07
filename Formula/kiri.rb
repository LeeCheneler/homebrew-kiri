class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.106.3"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.106.3/kiri"
  sha256 "2cf6e18436a653f000da645a7c2659bade8d7e4bf1c510d3c32d442ad0d83416"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
