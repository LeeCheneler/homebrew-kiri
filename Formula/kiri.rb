class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.37.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.37.0/kiri"
  sha256 "83a8fc1f33e6158f5d280d21454bfdc1e249342e51179766c3f8edaa50862560"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
