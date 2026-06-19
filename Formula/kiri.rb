class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.40.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.40.2/kiri"
  sha256 "78cd45d29d39c6bff08dd21ec7265586c17d9709dd69fa4d332ac475a1a6c244"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
