class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.47.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.47.1/kiri"
  sha256 "6edbab4bb32829f06a2729517646b1b4929faaa7525fb99a379fe99c02f5cd4b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
