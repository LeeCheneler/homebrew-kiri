class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.24.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.24.0/kiri"
  sha256 "1f8469ec98f82f808e283dc70fab0f6cf7611e5cdaf683f7976563b98dcef13f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
