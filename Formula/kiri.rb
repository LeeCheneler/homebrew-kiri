class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.25.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.25.0/kiri"
  sha256 "4ea873a4006a9a3b6237a9bac0a82f7afde08f3629535602ac5fad9af160a7af"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
