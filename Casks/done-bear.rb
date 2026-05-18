cask "done-bear" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.10"

  if Hardware::CPU.arm?
    sha256 "8c6245ecab9c6e938784f7eef6754c6e1a2fcb99fde9c20b795a7ef77d3592a7"
  else
    sha256 "81e576b71620aa7cbaf5f981d8c2286daee59fe5cfb68e0623aee6a0a20aec3b"
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
