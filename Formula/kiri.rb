class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.45.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.45.0/kiri"
  sha256 "748d06fdca9fbacbf1ffe1f596bb9e38864ab1080a02a626df81b0d45386bd80"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
