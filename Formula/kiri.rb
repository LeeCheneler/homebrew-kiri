class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.102.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.102.2/kiri"
  sha256 "eeab0d6e6c4c2951b53c62284269d6e1e9f57e596642bf4882990ebc48d62da0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
