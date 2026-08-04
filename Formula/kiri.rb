class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.75.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.75.1/kiri"
  sha256 "23099c09f6fb054b98ebe6a855dfbb45ce9ed019f259b9ac69660daa8d0cf39f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
