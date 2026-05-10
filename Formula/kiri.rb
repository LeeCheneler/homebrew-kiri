class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.6.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.6.0/kiri"
  sha256 "f160de8bbccba64ea3944db68aa62d9ed6e7bb5c7fd420a42f4066d5a3f287ef"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
