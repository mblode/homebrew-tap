cask "commandment" do
  version "0.1.7"
  sha256 "13a2defd94a3ada3a85a65e53a2ee8a3edc19aeca7bcb19dabf30ab1f167fd8e"

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
