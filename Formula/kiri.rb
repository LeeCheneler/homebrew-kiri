class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.72.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.72.0/kiri"
  sha256 "2229c396e63a11c7f1ad2bbe4296006ee01d3d7e5858520e16f904e72c1efeca"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
