class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.77.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.77.1/kiri"
  sha256 "c4c88b17537d068327f520ce2b8c55d38328f22e632e03fa115d757c0d6a1360"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
