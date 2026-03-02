cask "rubber-duck" do
  version "0.1.15"
  sha256 "0b1c2b97f00b55c6d35109315b826e796c9da7fe97ce6d71562943c686c76ac3"

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
