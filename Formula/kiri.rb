class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.67.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.67.1/kiri"
  sha256 "0063016fa4c71e9a3d23278cdddf94c473dbe4f538d57abcc8ffd6cadcba7026"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
