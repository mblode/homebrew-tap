cask "rubber-duck" do
  version "0.1.11"
  sha256 "d193a5be8ec8ae5ab9203555ad35307e733f96dc3e6b1d2da9aa45ae0e3017aa"

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
