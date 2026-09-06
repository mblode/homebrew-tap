cask "done-bear" do
  version "1.0.13"

  on_arm do
    sha256 "f45864aa8206f3454c4291ae8582e90f73c0ae38da66838443d4a1596b671fd7"

    url "https://donebear.com/api/desktop/download?tag=v#{version}&asset=Done.Bear_1.0.13_aarch64.app.tar.gz"
  end
  on_intel do
    sha256 "3c4a1aa8a16f6919d50fa31ba8611e91a165f658357fa47d465ed192f921ddb4"

    url "https://donebear.com/api/desktop/download?tag=v#{version}&asset=Done.Bear_1.0.13_x64.app.tar.gz"
  end

  name "Done Bear"
  desc "Local-first, GTD task manager synced across web, desktop, iOS and CLI"
  homepage "https://donebear.com/"

  livecheck do
    skip "Desktop builds are distributed through donebear.com."
  end

  auto_updates true

  # No depends_on: the bundle's LSMinimumSystemVersion is 10.13, which is older
  # than every macOS Homebrew still supports, and Homebrew has disabled the
  # symbol for it. A floor here could only be one we made up.

  app "Done Bear.app"

  zap trash: [
    "~/Library/Application Support/com.donebear.desktop",
    "~/Library/Caches/com.donebear.desktop",
    "~/Library/HTTPStorages/com.donebear.desktop",
    "~/Library/Logs/com.donebear.desktop",
    "~/Library/Preferences/com.donebear.desktop.plist",
    "~/Library/Saved Application State/com.donebear.desktop.savedState",
    "~/Library/WebKit/com.donebear.desktop",
  ]
end
