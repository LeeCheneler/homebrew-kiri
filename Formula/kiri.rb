class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.94.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.94.1/kiri"
  sha256 "ecf8a99f27c439079ecb05169644f1610dec2784c1e073a97784cf59d63fa9fc"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
