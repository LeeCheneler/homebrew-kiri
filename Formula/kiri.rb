class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.59.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.59.0/kiri"
  sha256 "86404b7c6f4006fee11b0c9fb2664cb3a75607733e6e69c9fe5bff0c8aef05bd"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
