class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.94.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.94.0/kiri"
  sha256 "e6c34e0ec5a932b2ed6fe20c55b1c2901751262aafcfeee671d20b4428333bb9"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
