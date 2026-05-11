class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.7.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.7.1/kiri"
  sha256 "0953614e027bbf25dfa4f4a794bf103ac5df15e63c3c17fe0dd909dc4c9a42dc"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
