class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.86.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.86.0/kiri"
  sha256 "cb05bec77c212f671827b01db20a511c23d59b21894e8a669814f93a125edb8d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
