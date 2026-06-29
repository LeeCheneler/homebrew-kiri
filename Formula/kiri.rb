class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.50.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.50.0/kiri"
  sha256 "262753613c1ae2de4c5b73288cc47e0ba6fe5ee4e0a3779439aec3152e28ce52"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
