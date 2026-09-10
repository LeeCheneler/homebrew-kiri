class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.111.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.111.1/kiri"
  sha256 "efab65e96631bccc7935075fcdd3ce05626c3acdfcf8b3281df201e879a3912c"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
