class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.81.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.81.0/kiri"
  sha256 "323a8a75465188a3b3be8a2bfdf455a31b694365a5fdf29f29af3dd635af7574"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
