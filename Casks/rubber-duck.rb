cask "rubber-duck" do
  version "0.1.16"
  sha256 "97790d65916ff25f5166dbfe29bd320856afb8f72b962d953642318ec904b842"

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
