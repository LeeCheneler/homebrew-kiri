class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.48.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.48.0/kiri"
  sha256 "f5715408b8cfa86612dfe0857472995567df73bdd92e5c3a085e9358036acc19"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
