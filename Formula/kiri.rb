class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.48.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.48.1/kiri"
  sha256 "4372f26ff0d4aaa4006f28338d281a0b5ad20660340b4ddbd1ebfb60af312de1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
