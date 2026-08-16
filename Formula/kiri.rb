class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.91.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.91.0/kiri"
  sha256 "061996077c6c020d00abee5404976396bffd8e58c200cc4a4010f2c16b081b73"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
