cask "rubber-duck" do
  version "0.1.23"
  sha256 "dd752908ba0080436e3db72d5c4efd80ac189939879a78a007d7430f107097ca"

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
