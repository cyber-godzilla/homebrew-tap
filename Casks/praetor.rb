# Homebrew CASK for the Praetor desktop GUI. Installs Praetor.app into
# /Applications so it appears in Launchpad/Spotlight (requirement 4).
# Rendered from this template by packaging/homebrew/render.sh and pushed to
# cyber-godzilla/homebrew-tap (Casks/praetor.rb).
cask "praetor" do
  version "0.4.0"
  sha256 "89c27cd837fc156ee6abf76194d24dab90a6f1cf723e02e3f43afef09a65e38a"

  url "https://github.com/cyber-godzilla/praetor/releases/download/v#{version}/Praetor_#{version}_darwin_universal.zip"
  name "Praetor"
  desc "Desktop client for The Eternal City"
  homepage "https://github.com/cyber-godzilla/praetor"

  app "Praetor.app"

  # Upgrade note (requirement 8): older releases shipped `praetor` as a FORMULA
  # that installed the TUI. The GUI now owns the `praetor` name as a cask and
  # the terminal client moved to the `praetor-tui` formula. Homebrew cannot
  # auto-migrate a formula to a cask, so anyone on the old formula should run
  # `brew uninstall praetor` once before `brew install --cask praetor`.
  caveats <<~EOS
    The `praetor` command is now the desktop GUI. The terminal client moved to
    a separate formula:

      brew install cyber-godzilla/tap/praetor-tui

    Upgrading from the old terminal `praetor` formula? Remove it first:

      brew uninstall praetor && brew install --cask cyber-godzilla/tap/praetor
  EOS

  zap trash: [
    "~/Library/Application Support/praetor",
    "~/Library/Preferences/com.cyber-godzilla.praetor.plist",
    "~/.config/praetor",
  ]
end
