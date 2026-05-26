class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.19.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.19.0/kiri"
  sha256 "5994e511e2adedcc7c70ad7f3ebc0c74b06051ed7194f0e970bceff809d9f604"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
