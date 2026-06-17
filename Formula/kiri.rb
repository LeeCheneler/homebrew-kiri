class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.34.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.34.1/kiri"
  sha256 "addd06540e4cff0b913d93a4ea931b0c791e102aa3381ebc4792b343a9f519d1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
