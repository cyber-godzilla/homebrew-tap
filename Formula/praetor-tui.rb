# Homebrew FORMULA for the Praetor terminal client (CLI on PATH as
# `praetor-tui`). Rendered from this template by packaging/homebrew/render.sh
# and pushed to cyber-godzilla/homebrew-tap (Formula/praetor-tui.rb).
class PraetorTui < Formula
  desc "Terminal client for The Eternal City"
  homepage "https://github.com/cyber-godzilla/praetor"
  version "0.5.2"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/praetor-tui_#{version}_darwin_arm64.tar.gz"
      sha256 "9a0e72499e44c964884c170451b233f5b6b169b17e27cd517d0367d8f2f6eee9"
    end
    on_intel do
      url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/praetor-tui_#{version}_darwin_amd64.tar.gz"
      sha256 "ef11abc8c6b9cc19182229d70b27accf506959b5be4dc74728aabe44cd24ec89"
    end
  end

  def install
    bin.install "praetor-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/praetor-tui --version")
  end
end
