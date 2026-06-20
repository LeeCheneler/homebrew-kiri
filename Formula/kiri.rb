class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.41.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.41.0/kiri"
  sha256 "f6685ba9078ab998e2a9e7cdf4636016d05ff32bfd4613a3791fb434156a56f1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
