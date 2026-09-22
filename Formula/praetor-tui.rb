# Homebrew FORMULA for the Praetor terminal client (CLI on PATH as
# `praetor-tui`). Rendered from this template by packaging/homebrew/render.sh
# and pushed to cyber-godzilla/homebrew-tap (Formula/praetor-tui.rb).
class PraetorTui < Formula
  desc "Terminal client for The Eternal City"
  homepage "https://github.com/cyber-godzilla/praetor"
  version "0.4.10"
  license "GPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/praetor-tui_#{version}_darwin_arm64.tar.gz"
      sha256 "7a40dbce648a30f7359c679b6314e8af3d2f59429ceb83efb55bb96fbf4a6363"
    end
    on_intel do
      url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/praetor-tui_#{version}_darwin_amd64.tar.gz"
      sha256 "6de1dca1565bbe14f7e3a0baf47b1fae6f3aa249807fd9002236aaa54a17dc12"
    end
  end

  def install
    bin.install "praetor-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/praetor-tui --version")
  end
end
