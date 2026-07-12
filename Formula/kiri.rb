class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.63.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.63.0/kiri"
  sha256 "70d54cf7ac3df4fb5027721f52e7df0f756c813597d22f2c75d416c7140caf37"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
