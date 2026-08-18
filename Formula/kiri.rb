class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.95.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.95.0/kiri"
  sha256 "e23bdb0a7ef010862f9c9ad9ae7affa5c7c9f770b09e236440d377caddb08660"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
