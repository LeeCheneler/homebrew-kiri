class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.53.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.53.0/kiri"
  sha256 "9287394f4f801ef04a8b52fcdfca267095a681015bb4a14841590ccfaf6ab95f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
