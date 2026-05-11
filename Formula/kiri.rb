class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.7.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.7.0/kiri"
  sha256 "6b7c141a84f9cf366518317629ca4d26c186a3024bd8dca5d168782621c018ff"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
