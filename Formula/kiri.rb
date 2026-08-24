class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.98.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.98.1/kiri"
  sha256 "f6ad6f77469eed0c813ea64799649b421baaab0cface91934f2bcec3c7ab8f99"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
