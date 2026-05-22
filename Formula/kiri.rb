class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.14.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.14.0/kiri"
  sha256 "a60949725314116e75a863504fd074dc7e1a863dbc6931db17221626f5767edf"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
