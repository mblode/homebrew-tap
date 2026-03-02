cask "rubber-duck" do
  version "0.1.13"
  sha256 "f793eac0f96edb1795d473a1223fa2de3a9073b2d2431acba2bb67af4e621d04"

  url "https://github.com/mblode/rubber-duck/releases/download/v#{version}/RubberDuck-#{version}.dmg"
  name "Rubber Duck"
  desc "macOS menu bar voice coding agent"
  homepage "https://github.com/mblode/rubber-duck"

  depends_on macos: ">= :sequoia"
  auto_updates true

  app "Rubber Duck.app"

  binary "#{appdir}/Rubber Duck.app/Contents/MacOS/rubber-duck"
  binary "#{appdir}/Rubber Duck.app/Contents/MacOS/rubber-duck", target: "rubber-duck-daemon"

  zap trash: [
    "~/Library/Preferences/co.blode.rubber-duck.plist",
    "~/Library/Application Support/RubberDuck",
    "/usr/local/bin/rubber-duck",
    "/usr/local/bin/rubber-duck-daemon",
  ]
end
