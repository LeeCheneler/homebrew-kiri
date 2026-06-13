class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.31.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.31.0/kiri"
  sha256 "8630003c312587f1ca70d1e86b1adea086b9540d3f0b7898b832051b8538d576"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
