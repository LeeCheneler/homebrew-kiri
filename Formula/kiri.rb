class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.16.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.16.0/kiri"
  sha256 "b2cff4a6681f0128c2c74525df2c295882468a4cdf31a93d980771676b4b6a73"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
