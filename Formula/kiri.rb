class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.5.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.5.0/kiri"
  sha256 "a2661a17f8074dd96439ca5d243fed8519aea46d54794c3f8817293a7c1dca17"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
