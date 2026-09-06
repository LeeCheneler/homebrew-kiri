class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.106.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.106.0/kiri"
  sha256 "5f83a57b3a6cf5dd8b4ebfa060f73984c98d8d06edc85f9a1bebf9a4a08f3d23"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
