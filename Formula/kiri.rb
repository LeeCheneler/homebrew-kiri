class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.69.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.69.0/kiri"
  sha256 "874c844e962728965e040742f3b2d8d201dbfa467d25cb36513404dfaaaf1bac"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
