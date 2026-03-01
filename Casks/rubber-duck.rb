cask "rubber-duck" do
  version "0.1.10"
  sha256 "4f75ddbf801e99d15b07c7c9b2d666c2e047c5b13f8be25ce49bbb61d65d58b0"

  url "https://github.com/mblode/rubber-duck/releases/download/v#{version}/RubberDuck-#{version}.dmg"
  name "RubberDuck"
  desc "macOS menu bar dictation app using OpenAI transcription"
  homepage "https://github.com/mblode/rubber-duck"

  depends_on macos: ">= :sequoia"
  auto_updates true

  app "RubberDuck.app"

  zap trash: [
    "~/Library/Preferences/co.blode.rubber-duck.plist",
    "~/Library/Application Support/co.blode.rubber-duck",
  ]
end
