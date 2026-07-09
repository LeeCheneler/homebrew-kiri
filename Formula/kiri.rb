class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.58.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.58.1/kiri"
  sha256 "8b0a677158f1fe40e47eae4a850ff6bcf2295f5da02795fc78204cc377d93287"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
