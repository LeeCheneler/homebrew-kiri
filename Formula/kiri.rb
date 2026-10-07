class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.117.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.117.2/kiri"
  sha256 "9380cb2695751f1d646b9c72fcb5b3f900d6770d9f04abaf36dd65ee7f3017d3"

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
