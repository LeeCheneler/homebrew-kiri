class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.24.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.24.1/kiri"
  sha256 "ade922982000bfd57701d61830875626b5b0ea79507821c397b8d2866db9b0c0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
