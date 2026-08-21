class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.98.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.98.0/kiri"
  sha256 "d694aa6b2c9ea207c98dd15d306d29e62e5cc9973144e67cf183386439702586"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
