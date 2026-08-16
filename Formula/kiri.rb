class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.93.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.93.0/kiri"
  sha256 "31ea0f0a195c73960535c06ddc9502d190f31c14969bdaf6adff3097d3140e04"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
