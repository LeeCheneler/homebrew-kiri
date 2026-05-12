class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.8.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.8.0/kiri"
  sha256 "578bf2ff0ae57aeee55116582a8e27943bd69fc498f83b918f7c3f50b5753ebb"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
