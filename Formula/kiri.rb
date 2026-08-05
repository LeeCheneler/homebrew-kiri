class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.76.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.76.0/kiri"
  sha256 "c8854e76bf5fa94cad492c642a90c69db1081ae7b7a258a75f13181aa6c7b91e"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
