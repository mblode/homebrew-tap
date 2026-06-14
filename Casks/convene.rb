cask "convene" do
  version "0.1.6"
  sha256 "8fdbe93d7c84352b11050b700214858da474c7e52b601c6bf1ec802ca0fd8f30"

  url "https://github.com/mblode/convene/releases/download/v#{version}/Convene-#{version}.dmg"
  name "Convene"
  desc "macOS meeting transcription app - BYO OpenAI API key"
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
