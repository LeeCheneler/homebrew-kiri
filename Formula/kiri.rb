class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.58.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.58.0/kiri"
  sha256 "1294b5f207e9a29c37bb6aae41235dcb65972e78aa57319faff731dc2949f504"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
