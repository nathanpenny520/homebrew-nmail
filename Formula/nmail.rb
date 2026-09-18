class Nmail < Formula
  desc "AI-driven, local-first aggregated email client"
  homepage "https://github.com/nathanpenny520/Nmail"
  url "https://github.com/nathanpenny520/Nmail/releases/download/v0.4.5/nmail-macos-arm64"
  sha256 "a52edb81386cb9631dc7cf9f0ced2f96f31b4b4a9a9387159c4efe97fa638a40"
  license "MIT"
  version "0.4.5"

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