cask "rubber-duck" do
  version "0.1.14"
  sha256 "a8b45716943793177c541c2ed0ec399ea84fb7b3bc92d12c39b89b3fee80de4a"

  url "https://github.com/mblode/rubber-duck/releases/download/v#{version}/RubberDuck-#{version}.dmg"
  name "Rubber Duck"
  desc "macOS menu bar voice coding agent"
  homepage "https://github.com/mblode/rubber-duck"

  depends_on macos: ">= :sequoia"
  auto_updates true

  app "Rubber Duck.app"

  zap trash: [
    "~/Library/Preferences/co.blode.rubber-duck.plist",
    "~/Library/Application Support/RubberDuck",
    "/usr/local/bin/rubber-duck",
    "/usr/local/bin/rubber-duck-daemon",
  ]
end
