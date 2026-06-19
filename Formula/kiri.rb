class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.40.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.40.0/kiri"
  sha256 "6eea09e3f53555469fa280e15d29887ad20f917c2a3e03b1688fdb70ae49b4f7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
