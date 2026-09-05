class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.102.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.102.1/kiri"
  sha256 "19d49a13f8f92a95148e075c240008f22c38c1f9b8361c8be1088324b345c43b"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
