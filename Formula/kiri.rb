class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.83.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.83.0/kiri"
  sha256 "3db3b5ab8b6dd0cd38b0269876323b0d342a1232f80212c74e4f419eceaaed1f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
