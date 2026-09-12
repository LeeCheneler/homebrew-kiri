class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.111.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.111.2/kiri"
  sha256 "756c87f9c9976d793ef4d27345adc53f840ca3920491eec22c8797d68c18127c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
