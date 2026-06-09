cask "done-bear" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.11"

  if Hardware::CPU.arm?
    sha256 "5eebe27a37490c1446e8b0a53df8f6057ed6faa8ffa02c85d8a9612cc95b74d4"
  else
    sha256 "fc8f1bb0d1bbbc02aacb33769fb060d335b3449b2aeaaeccf28ba017b8cc86a7"
  end

  url "https://donebear.com/api/desktop/download?tag=v#{version}&asset=done-bear_#{version}_#{arch}.app.tar.gz"
  name "Done Bear"
  desc "Local-first task manager desktop shell"
  homepage "https://donebear.com"

  livecheck do
    skip "Desktop builds are distributed through donebear.com."
  end

  auto_updates true

  app "Done Bear.app"

  zap trash: [
    "~/Library/Application Support/com.donebear.desktop",
    "~/Library/Caches/com.donebear.desktop",
    "~/Library/HTTPStorages/com.donebear.desktop",
    "~/Library/Logs/com.donebear.desktop",
    "~/Library/Preferences/com.donebear.desktop.plist",
    "~/Library/Saved Application State/com.donebear.desktop.savedState",
    "~/Library/WebKit/com.donebear.desktop"
  ]
end
