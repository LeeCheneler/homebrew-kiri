class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.18.2"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.18.2/kiri"
  sha256 "96bfa2682a23dbbaf46553ac422157c5d252715921224db38c7f7dce9cbe6ed6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
