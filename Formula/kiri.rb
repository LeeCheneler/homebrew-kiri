class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.7.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.7.2/kiri"
  sha256 "859be8de2fc00ee49b8746416c979b066c9ee9b20e97236251aa1ff16d303075"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
