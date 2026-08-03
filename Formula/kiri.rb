class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.70.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.70.0/kiri"
  sha256 "cff8aeefe10ad574b6fefa823cd46405b2b225cecbcf62e5364f3287d838fe67"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
