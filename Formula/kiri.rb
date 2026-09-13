class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.111.3"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.111.3/kiri"
  sha256 "ea38166ad4b837ec496d824a7f0893e11316acac9b0f6640164093adffecce8f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
