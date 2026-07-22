class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.67.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.67.0/kiri"
  sha256 "b2edca3c5703b930afe213370bca21762264ffc14a7aede4a1d226f8ce4af012"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
