class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.96.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.96.0/kiri"
  sha256 "c3b697b8942477d1d4732211dbfe93f1566c4056416361f63fa91ff87d377779"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
