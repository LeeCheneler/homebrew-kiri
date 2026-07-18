class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.66.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.66.0/kiri"
  sha256 "b69294cc6304d2b7074488d6e037aae2fc15feb26aa1e5aa622db8401bc950cd"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
