cask "commandment" do
  version "0.1.14"
  sha256 "4d1948cd496ca756395e6e18bda130c8463a739b6d1a63bdbb63f2449d4f4fb3"

  url "https://github.com/mblode/commandment/releases/download/v#{version}/Commandment-#{version}.dmg"
  name "Commandment"
  desc "macOS menu bar dictation app using OpenAI transcription"
  homepage "https://github.com/mblode/commandment"

  depends_on macos: ">= :sequoia"
  auto_updates true

  app "Commandment.app"

  zap trash: [
    "~/Library/Preferences/co.blode.commandment.plist",
    "~/Library/Application Support/co.blode.commandment",
  ]
end
