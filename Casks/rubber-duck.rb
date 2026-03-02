cask "rubber-duck" do
  version "0.1.12"
  sha256 "7e9c5de9376a8f98c294dcb57ab1d93e1f92293933e9d2d1478ce0c11afcda1c"

  url "https://github.com/mblode/rubber-duck/releases/download/v#{version}/RubberDuck-#{version}.dmg"
  name "Rubber Duck"
  desc "macOS menu bar dictation app using OpenAI transcription"
  homepage "https://github.com/mblode/rubber-duck"

  depends_on macos: ">= :sequoia"
  auto_updates true

  app "Rubber Duck.app"

  zap trash: [
    "~/Library/Preferences/co.blode.rubber-duck.plist",
    "~/Library/Application Support/co.blode.rubber-duck",
  ]
end
