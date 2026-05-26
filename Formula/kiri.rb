class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.19.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.19.1/kiri"
  sha256 "d070bf3b19b54de86a5998fe2adb0a35e018c568fa15066c0dc9829946e1d48b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
