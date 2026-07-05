class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.54.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.54.0/kiri"
  sha256 "168b07484a22afe6b7a91cb5fefde9a6bb09bd2262f49546265cbc995110ae95"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
