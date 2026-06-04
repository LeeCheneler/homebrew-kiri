class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.29.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.29.0/kiri"
  sha256 "8edec33c350139af37e56e859e4461d18f4e1220f00cf53d3b0de0b5b2970dc4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
