class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.56.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.56.0/kiri"
  sha256 "0962f896628f3bd1accb782005284d81eebe0361d9608040c2612644ed0d9c21"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
