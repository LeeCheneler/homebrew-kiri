class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.114.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.114.0/kiri"
  sha256 "195ea304b6e7e3ad6adbe0509c1dd04d591564d3bfe43470244d92f065b74a82"

  depends_on :macos
  depends_on arch: :arm64

  def install
    # Release binaries before v0.113.0 carry an invalid ad-hoc signature
    # that macOS 27 refuses to exec. Re-signing is harmless on good ones.
    system "codesign", "--force", "--sign", "-", "kiri"
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
