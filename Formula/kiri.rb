class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.88.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.88.0/kiri"
  sha256 "b23c2be7a5cc839030734fd6786323add012428395b995d9de206ca4b1076c20"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
