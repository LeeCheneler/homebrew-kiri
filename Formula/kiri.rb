class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.36.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.36.0/kiri"
  sha256 "c014da1e5a56b5f0ebb48505fd84f8c4aedbfe9cfe37f13ac87a70f326a60f33"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
