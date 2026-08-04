class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.75.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.75.0/kiri"
  sha256 "3fe29bcdd3e217a54ef58d019960af75632e10546f0668cdd115bc26b545b71e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
