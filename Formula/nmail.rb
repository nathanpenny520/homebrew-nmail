class Nmail < Formula
  desc "AI-driven, local-first aggregated email client"
  homepage "https://github.com/nathanpenny520/Nmail"
  url "https://github.com/nathanpenny520/Nmail/releases/download/v0.4.1/nmail-macos-arm64"
  sha256 "48338c8499dbd72e4703c93853f09d469d61b2af9d937a8439e7d9f73d989a77"
  license "MIT"
  version "0.4.1"

  depends_on :macos

  def install
    bin.install "nmail-macos-arm64" => "nmail"
  end

  def caveats
    <<~EOS
      Apple Silicon (arm64) build. Linux users: use PyPI instead:
        uvx --from nmail-app nmail
      If Gatekeeper blocks the first launch (unsigned binary):
        xattr -dr com.apple.quarantine #{opt_bin}/nmail
    EOS
  end

  test do
    assert_match "Nmail #{version}", shell_output("#{bin}/nmail --version")
  end
end