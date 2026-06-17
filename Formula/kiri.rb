class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.32.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.32.0/kiri"
  sha256 "78674e26871dba61d84b3bb50b8f11352f84b9c27ae6669caa9b1f71adb28e85"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
