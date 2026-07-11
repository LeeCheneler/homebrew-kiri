class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.58.5"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.58.5/kiri"
  sha256 "79c63788054eea1ea848a285a7303e35429eb70344680bc6182c80921ebe1d4d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
