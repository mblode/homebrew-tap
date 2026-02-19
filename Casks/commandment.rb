cask "commandment" do
  version "0.1.1"
  sha256 "512452d90b02f7eaf438c67cb36528168b3cec7dd4a2a9951f09356aefcdc506"

  url "https://github.com/mblode/commandment/releases/download/v#{version}/Commandment-#{version}.dmg"
  name "Commandment"
  desc "macOS menu bar dictation app using OpenAI transcription"
  homepage "https://github.com/mblode/commandment"

  depends_on macos: ">= :sequoia"

  app "Commandment.app"

  zap trash: [
    "~/Library/Preferences/co.blode.commandment.plist",
    "~/Library/Application Support/co.blode.commandment",
  ]
end
