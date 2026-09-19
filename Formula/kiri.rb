class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.114.3"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.114.3/kiri"
  sha256 "a479c27611aa7b4722888e0c64b796732a3278801a4df7208c2c948b361c37ce"

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
