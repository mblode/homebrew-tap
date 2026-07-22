cask "convene" do
  version "0.1.8"
  sha256 "06923893c4b08d7cb35e2e8956e6df0230827dd64b1a3dc0a8815e88494fba29"

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
