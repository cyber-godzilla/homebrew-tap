# Homebrew FORMULA for the Praetor terminal client (CLI on PATH as
# `praetor-tui`). Rendered from this template by packaging/homebrew/render.sh
# and pushed to cyber-godzilla/homebrew-tap (Formula/praetor-tui.rb).
class PraetorTui < Formula
  desc "Terminal client for The Eternal City"
  homepage "https://github.com/cyber-godzilla/praetor"
  version "0.4.8"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/praetor-tui_#{version}_darwin_arm64.tar.gz"
      sha256 "a40ec13ae686b8618286b729fbac0411c9c2411cf693bd54159d6d214b09b92c"
    end
    on_intel do
      url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/praetor-tui_#{version}_darwin_amd64.tar.gz"
      sha256 "0b58853364719dc1e91bcb17b670de477fd9163269caee9e14c7dcc1e819db2a"
    end
  end

  def install
    bin.install "praetor-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/praetor-tui --version")
  end
end
