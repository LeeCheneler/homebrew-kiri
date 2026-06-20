class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.42.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.42.0/kiri"
  sha256 "5f7e64212bf88ca9d315213f480561237cc000ab3ca93bb0c2e4849ddb2ef249"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
