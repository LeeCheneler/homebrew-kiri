class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.101.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.101.1/kiri"
  sha256 "5d46c2ea2374ba67077945913d360cadf4f750410a5848d9a9a22825400de048"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
