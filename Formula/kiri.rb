class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.28.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.28.0/kiri"
  sha256 "907b50fbf01ab496798dd58d493d82a7bfc5305639b575b6c7b13df39287b817"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
