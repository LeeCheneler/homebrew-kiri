class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.30.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.30.0/kiri"
  sha256 "78239a940f17f96fdcc8bdf328d4d18d4816f47347abd283922d34309ba56cad"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
