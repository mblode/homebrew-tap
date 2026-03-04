cask "rubber-duck" do
  version "0.1.21"
  sha256 "36a8b35afa66d0ddfb7acfa451c5ce950df10216b516dbe184a0eaef8358f5b2"

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
