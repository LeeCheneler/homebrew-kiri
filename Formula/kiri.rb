class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.23.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.23.0/kiri"
  sha256 "fedf7f646e82b861b78145994bf97b55427758ce84e2cb312377108c007fd3be"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
