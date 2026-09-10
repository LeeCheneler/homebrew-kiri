class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.111.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.111.0/kiri"
  sha256 "ac1ee0b069b4a9b21361f92bae70294acb9fcac2d5507fbab00a88f18fb8b1c7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
