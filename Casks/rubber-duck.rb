cask "rubber-duck" do
  version "0.1.19"
  sha256 "10f36e196d73225fb88c4e14a234f506221a0485135eedd37b2a54cca02776e9"

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
