class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.26.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.26.0/kiri"
  sha256 "9edcb842944a113b68bfd9e823d4e893254637f7d98e16415833b9cb13094037"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
