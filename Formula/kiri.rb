class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.47.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.47.0/kiri"
  sha256 "f0fd78b7cfaaced8d54a18f57d77eb69c3c07e769f3c6160964709df5211835b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
