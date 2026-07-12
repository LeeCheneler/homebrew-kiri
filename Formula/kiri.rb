class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.62.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.62.0/kiri"
  sha256 "3e865a9249a4f161ce273e2e679dc726e268a4e260853c8d3a7d61785b2752c2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
