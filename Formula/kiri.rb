class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.25.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.25.1/kiri"
  sha256 "c9da1df534f8f6938bfd81ccd68302b99754993c1810e991391f9c509359d447"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
