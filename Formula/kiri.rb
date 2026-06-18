class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.39.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.39.0/kiri"
  sha256 "ec37a804dcc03f72f98fd6b95fe96d4a76fd25bf45a8f96174190707e36f59ae"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
