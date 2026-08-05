class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.77.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.77.0/kiri"
  sha256 "3c482847bdc7ecb6521fc4176e54705f7ab0c5163fb018ada5306aa8e14af3db"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
