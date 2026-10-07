cask "convene" do
  version "0.2.1"
  sha256 "deca6e2cc3aa81754389ac7c596804d6329cde748d36dc623dfb4e8bcce40a61"

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
