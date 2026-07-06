class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.56.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.56.2/kiri"
  sha256 "f7ed2ae8b7eb4fa21d2151035fb681a483061d7039c95f31846c07b51a90e0f6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
