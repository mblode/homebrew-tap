cask "convene" do
  version "0.1.4"
  sha256 "0bd086eb051fa4e6fd3c29040caa1d349cca9173b56c3ac7939e112517ed5fc8"

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
