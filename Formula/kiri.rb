class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.84.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.84.0/kiri"
  sha256 "fc492ec272956de6840115f1d78c6583a6390188626334d09e7888c3952603e1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
