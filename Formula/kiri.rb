class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.18.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.18.1/kiri"
  sha256 "6450e18c5f27bfa00b503210eb83524e6754894c96870b8872ce26e633479e4a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
