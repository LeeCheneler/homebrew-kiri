class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.11.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.11.2/kiri"
  sha256 "552264a89f404ae3ab9d0c44d56465861273932dd053d6bdad01edb86bb57b17"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
