class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.92.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.92.0/kiri"
  sha256 "fbcc2a24e7e8af7ddbaa486184e018f244c458b3dcc016feecde1a8b20440633"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
