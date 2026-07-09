# Homebrew FORMULA for the Praetor terminal client (CLI on PATH as
# `praetor-tui`). Rendered from this template by packaging/homebrew/render.sh
# and pushed to cyber-godzilla/homebrew-tap (Formula/praetor-tui.rb).
class PraetorTui < Formula
  desc "Terminal client for The Eternal City"
  homepage "https://github.com/cyber-godzilla/praetor"
  version "0.2.1"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/praetor-tui_#{version}_darwin_arm64.tar.gz"
      sha256 "dfcc560bcf8e235e7b68163cae68d28b6de540311805a0b02a06fac932ab887f"
    end
    on_intel do
      url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/praetor-tui_#{version}_darwin_amd64.tar.gz"
      sha256 "71b9b9bc172f64a7d5797d2fced8551f2ff52e05451de6fc545928c9def195af"
    end
  end

  def install
    bin.install "praetor-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/praetor-tui --version")
  end
end
