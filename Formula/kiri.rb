class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.4.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.4.0/kiri"
  sha256 "07380ea40e138e93b43468450d36f76efd21cc69267e14d5eb6ce19b54523d3b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
