class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.11.1"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.11.1/kiri"
  sha256 "82a34edba3d9444e226588db6754c6dad2931786ca5a03ced44482b2c36e10e5"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
