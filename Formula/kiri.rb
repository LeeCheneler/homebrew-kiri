class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.87.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.87.1/kiri"
  sha256 "3e077ffb5f85c873d3b5c607f23cc1ae48e52c9bc0466ab226ea296580763b73"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
