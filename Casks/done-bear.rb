cask "done-bear" do
  version "1.0.14"

  on_arm do
    sha256 "20781854be3e4cad081bfcedaae0f168de00af31fd9badd9bd1f044032cc423d"

    url "https://donebear.com/api/desktop/download?tag=v#{version}&asset=Done.Bear_1.0.14_aarch64.app.tar.gz"
  end
  on_intel do
    sha256 "2778b4480e295edb8cb20bdca3bb8aba823f9f216444623eabc6155e7720be74"

    url "https://donebear.com/api/desktop/download?tag=v#{version}&asset=Done.Bear_1.0.14_x64.app.tar.gz"
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
