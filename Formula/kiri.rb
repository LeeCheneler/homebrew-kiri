class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.21.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.21.0/kiri"
  sha256 "d44bea9689086bcd0aea4ea8c2ed0c8f35b22fb7992b38ef1a37832ca4b5385e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
