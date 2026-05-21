class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.13.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.13.0/kiri"
  sha256 "45b8cbf3b182d5c0f14cdced3e5283a0f0349f97c2120d8bff378a6b4404b084"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
