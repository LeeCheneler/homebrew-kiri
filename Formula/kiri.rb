class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.57.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.57.0/kiri"
  sha256 "21e22078dce5fb285397483f1b6d03c8b3027deb806cffab7bd7e39fcfe6c036"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
