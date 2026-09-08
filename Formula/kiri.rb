class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.107.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.107.0/kiri"
  sha256 "eb5b4c643bf15e18b517cf9c9bfbb530e3d05ed143862d02e698e377a55ec876"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
