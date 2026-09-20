cask "backspacer" do
  version "1.1.0"
  sha256 "9b176e4ef6c40fbd2ce38509bcb45ec805af3f7d1c53731891a307620c9810dc"

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
