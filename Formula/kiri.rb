class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.40.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.40.1/kiri"
  sha256 "5409c0e5f3cef62f5e53d46447582c3f855af3a4de948b38fe946471222d9c88"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
