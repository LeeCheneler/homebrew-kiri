class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.52.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.52.0/kiri"
  sha256 "dad8f76493adb7b62c8aa02528bae8c7659b046c48720353ca9ae44685b41d91"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
