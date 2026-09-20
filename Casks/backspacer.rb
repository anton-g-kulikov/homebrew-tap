cask "backspacer" do
  version "1.0.3"
  sha256 "128ee43c16123a719ffe74dea48aba4ff4209a5d513a222c7f66cff430523d32"

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
