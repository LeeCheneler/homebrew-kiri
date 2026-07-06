class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.56.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.56.1/kiri"
  sha256 "52aa742646d32a463e09d23617136c2b6b777abee6aaa2a3e03d857005681080"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
