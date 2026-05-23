class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.15.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.15.0/kiri"
  sha256 "b6ca109e40d79552b3abe320c0940b2ab9ef0f3dbcd3e8e056d1cd6677e30536"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
