class Nmail < Formula
  desc "AI-driven, local-first aggregated email client"
  homepage "https://github.com/nathanpenny520/Nmail"
  url "https://github.com/nathanpenny520/Nmail/releases/download/v0.1.0/nmail-macos-arm64"
  sha256 "39c8e1d196ed65d287c97a87371c1ea241fcb4b6657516b1938d898076ccba27"
  license "MIT"
  version "0.1.0"

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
