class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.48.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.48.2/kiri"
  sha256 "6d28b16deb574a13b4ff235962b558c01c196b6cba15413db185d5c37e6d1a40"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
