class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.17.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.17.0/kiri"
  sha256 "34633b8c9fe6625344b03549b119ee7f55de8ef903d92b285b7aa4d25e14dd75"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
