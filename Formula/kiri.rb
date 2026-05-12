class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.9.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.9.0/kiri"
  sha256 "69cb56babbf9cd703a23dc64a6866282d4807134a2139a270a2e632a2ee72e1d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
