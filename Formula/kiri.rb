class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.60.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.60.0/kiri"
  sha256 "afb6375e75b2f455948036b5104871f2fa04064af34d59b954826b0ce47fe5cc"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
