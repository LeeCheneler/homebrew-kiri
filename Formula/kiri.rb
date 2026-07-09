class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.58.3"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.58.3/kiri"
  sha256 "277751eafbe9e96791e0a34300fff97879c7dc1b5b275723a8ffa5d614f574c4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
