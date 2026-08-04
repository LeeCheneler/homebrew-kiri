class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.74.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.74.0/kiri"
  sha256 "14331f0c5e8855a69c628e52b7f6346085e55283133a702871d88829cc453140"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
