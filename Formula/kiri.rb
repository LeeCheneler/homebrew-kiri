class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.114.5"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.114.5/kiri"
  sha256 "746ac79943e83e8f306cc26e9a5ce4424fa6711dc060f89b2084804316d28b19"

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
