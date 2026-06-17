class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.33.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.33.0/kiri"
  sha256 "5a795285466844c76093fb1f62ab668e67761d1135a8bd63692f90b30bca68e0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
