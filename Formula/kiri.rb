class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.106.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.106.2/kiri"
  sha256 "fbf6a0426a73899635dddbf47376d32a70bb192eab4bddb2b1ed8e1d91d58498"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
