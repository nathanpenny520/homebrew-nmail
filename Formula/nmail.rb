class Nmail < Formula
  desc "AI-driven, local-first aggregated email client"
  homepage "https://github.com/nathanpenny520/Nmail"
  url "https://github.com/nathanpenny520/Nmail/releases/download/v0.3.0/nmail-macos-arm64"
  sha256 "d9cd236dbfff44c6f197d530a0238947c866a6352f65c0fb1eba3781532a2253"
  license "MIT"
  version "0.3.0"

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