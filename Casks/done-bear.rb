cask "done-bear" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.9"

  if Hardware::CPU.arm?
    sha256 "ff10de8a8d436395628691bf431a0ea95190969df44aab83304b756829bbfc17"
  else
    sha256 "522d7eeb123f8f062e19b84d9a62c33582b14eb70ceb452faa8d4173250ed151"
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
