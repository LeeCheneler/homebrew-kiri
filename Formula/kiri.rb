class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.117.3"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.117.3/kiri"
  sha256 "0e36fe5e4fa6c4449def60b1d8bc74e6a97b111da21770877109f93fdd03c5fb"

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
