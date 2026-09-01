class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.99.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.99.0/kiri"
  sha256 "d1faf2ae90d52d53eb6e5fa9d6db19b0c4ad3eea1226652da816a1778afba521"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
