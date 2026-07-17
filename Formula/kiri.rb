class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.65.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.65.0/kiri"
  sha256 "e51110db629725d15b6e2d6e8a075aa259f1b50420d9a4b90dd9c934fa7d7b48"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
