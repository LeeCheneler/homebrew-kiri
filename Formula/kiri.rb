class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.27.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.27.0/kiri"
  sha256 "943e3d87d887ef7026b9a2aa017e8e48a16964a6755c5fa4c4afc7590b9ac48b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
