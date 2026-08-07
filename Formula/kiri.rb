class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.79.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.79.0/kiri"
  sha256 "152d99fc6368609c4af3f781401b2602bb9af2e0ac9921a1d4566cdc5f285ab0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
