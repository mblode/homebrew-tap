cask "convene" do
  version "0.1.9"
  sha256 "341123596c4bf04bf1e4960ac25c6e5bf0c9964278fd69aa4de6963f8073f4f6"

  url "https://github.com/mblode/convene/releases/download/v#{version}/Convene-#{version}.dmg"
  name "Convene"
  desc "macOS meeting transcription app - BYO AssemblyAI and Anthropic API keys"
  homepage "https://github.com/mblode/convene"

  depends_on macos: ">= :sequoia"
  auto_updates true

  app "Convene.app"

  zap trash: [
    "~/Library/Containers/co.blode.convene",
    "~/Library/Preferences/co.blode.convene.plist",
    "~/Library/Application Support/co.blode.convene",
    "~/Library/Logs/Convene.log",
  ]
end
