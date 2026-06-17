class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.34.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.34.2/kiri"
  sha256 "20c6020f6400019f34eb7e7accbe4cf18e11f8b73db9c6f7fde6ab28497167b6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
