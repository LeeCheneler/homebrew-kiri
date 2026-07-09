class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.58.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.58.2/kiri"
  sha256 "5870ca0ec818f5f67d09b529e91afd4a188a0fed602c6bc73ddc5be27f70a468"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
