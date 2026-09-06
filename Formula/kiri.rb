class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.105.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.105.0/kiri"
  sha256 "09ec3d8e7207e6213816c6ae1097198803c086120e2cbaab462736ccc933ba16"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
