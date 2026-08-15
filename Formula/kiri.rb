class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.89.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.89.0/kiri"
  sha256 "e92d909ebd224b3c0e3e3068a02253dd35fc133197eb8fdb2505bf80aa268aff"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
