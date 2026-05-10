class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.4.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.4.1/kiri"
  sha256 "8bbb5e86255efaee7280c2d0926f71ab338dce17c93e8c31dee6a64b43b142b1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
