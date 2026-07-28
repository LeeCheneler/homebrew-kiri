class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.68.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.68.0/kiri"
  sha256 "59a4c18eda981d64c8095896ebacfb09f6042ca2d4e9677bbef67affff5abaaa"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
