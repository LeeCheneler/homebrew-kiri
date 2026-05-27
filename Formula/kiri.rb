class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.20.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.20.0/kiri"
  sha256 "021ee14e9d05c0e88d5d3748c16ee896200979af22b87a2103e83aee60df61aa"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
