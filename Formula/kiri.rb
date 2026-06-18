class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.38.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.38.0/kiri"
  sha256 "7f15a3697cf91fa2727fa12da9173868822219f2691872806a9604a47a290827"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
