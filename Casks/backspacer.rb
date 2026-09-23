cask "backspacer" do
  version "1.3.0"
  sha256 "541d1e0208420f1e44232711c70f1450c80bb7cfd677f4f134adba3274ee4768"

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
