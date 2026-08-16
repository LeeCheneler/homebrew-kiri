class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.90.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.90.0/kiri"
  sha256 "de5dfe7d4f49c533f9594e94a44d32f6f26f450d9f8880702f7fdcfdeecc1851"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
