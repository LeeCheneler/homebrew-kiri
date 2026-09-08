class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.109.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.109.0/kiri"
  sha256 "2bfb15ace7789baf90d060913ab65a7fad2c08eedc861159dcab027e464aedd7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
