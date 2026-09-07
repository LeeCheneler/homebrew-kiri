class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.106.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.106.1/kiri"
  sha256 "ec0efa9431ad594b3662862a374dd7dd08f61fa489499b461b9d3d02047ebeb4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
