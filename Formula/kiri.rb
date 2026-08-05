class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.78.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.78.0/kiri"
  sha256 "1405ff0fa9b7997999e17b945f04ba920b15548f6c4bec5c38509973f225c1aa"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
