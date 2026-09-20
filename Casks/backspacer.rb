cask "backspacer" do
  version "0.9.1"
  sha256 "5d5ce63113862f893ffae0eed7816e65a0a8e7ca783447efdef307434fbc8ff1"

  url "https://github.com/anton-g-kulikov/backspacer/releases/download/v#{version}/Backspacer-#{version}.dmg"
  name "Backspacer"
  desc "Finds and removes the caches and build leftovers eating a developer's disk"
  homepage "https://backspacer.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Backspacer.app"

  zap trash: [
    "~/Library/Logs/Backspacer",
    "~/Library/Preferences/com.antonkulikov.backspacer.plist",
    "~/Library/Saved Application State/com.antonkulikov.backspacer.savedState",
  ]
end
