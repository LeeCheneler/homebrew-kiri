class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.43.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.43.0/kiri"
  sha256 "d7d40d32ffd8eea23aea2f503b45e5accbcc73b3d3e6aca5564c6e187c050f00"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
