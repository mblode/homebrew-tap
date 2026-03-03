cask "rubber-duck" do
  version "0.1.18"
  sha256 "7a66dd4c7d60b432f43e1bdd51c540fef6b3c5232c99bedec3f338d63a4c2c0b"

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
    "/usr/local/bin/duck",
    "/usr/local/bin/duck-daemon",
  ]
end
