class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.58.4"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.58.4/kiri"
  sha256 "d9ef00965f63bd5c68f7be596573226d7dbe320cdaeda55615dd1e5a7e04cdc5"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
