class Kiri < Formula
  desc "Local-first, git-based workflow orchestrator for personal automation"
  homepage "https://github.com/LeeCheneler/kiri"
  version "0.55.0"
  url "https://github.com/LeeCheneler/kiri/releases/download/v0.55.0/kiri"
  sha256 "cdc1c36bc7db607fce5f07544083de40b917edc25fcc45ed30a1e70d232cd341"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "kiri"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kiri --version")
  end
end
