class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.44.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.44.0/kiri"
  sha256 "44c7a0f8d9c20720366fc7503d4cf629dfa6fbd490ce978c7d8085597b6485b0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
