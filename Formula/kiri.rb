class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.104.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.104.0/kiri"
  sha256 "b2ebb22fb99e708c9f67f93f425c821afc7c276b147f563a3bc44e52ba337522"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
