class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.108.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.108.0/kiri"
  sha256 "d0e23d8ef137133e1c97bc20d5d1f33eeaed26ecf08d38c29e13a5020406752d"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
