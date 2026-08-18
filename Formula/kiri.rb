class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.93.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.93.1/kiri"
  sha256 "45906399cea8f8216cfef975b1efefefd9e33da5ab6a33e2d0338fd76038a797"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
