class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.12.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.12.0/kiri"
  sha256 "5f87c4627860355173c85f268dd99bb3e34f165b6ba76e5b79dd1804bcc2dae8"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
