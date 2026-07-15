# Homebrew FORMULA for the Praetor terminal client (CLI on PATH as
# `praetor-tui`). Rendered from this template by packaging/homebrew/render.sh
# and pushed to cyber-godzilla/homebrew-tap (Formula/praetor-tui.rb).
class PraetorTui < Formula
  desc "Terminal client for The Eternal City"
  homepage "https://github.com/cyber-godzilla/praetor"
  version "0.2.6"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/praetor-tui_#{version}_darwin_arm64.tar.gz"
      sha256 "0eb7e66f0b84ed77d4df5297acaaa4e4f5001eb066eb4cecb03c8a97a9ba4049"
    end
    on_intel do
      url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/praetor-tui_#{version}_darwin_amd64.tar.gz"
      sha256 "5d73ae8ec133eaa671dc760d31d6267a4e7ead23b2f9b2f9b1593daa1d4dc232"
    end
  end

  def install
    bin.install "praetor-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/praetor-tui --version")
  end
end
