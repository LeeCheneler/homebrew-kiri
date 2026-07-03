class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.51.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.51.1/kiri"
  sha256 "6c0a117119e5b79faa8dff78ac51b483abb440190ceee21545063bd816acb798"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
