cask "backspacer" do
  version "1.0.2"
  sha256 "44c6b5532e310592ce87abbec17a93b506e7db08942d538df349665df429ed84"

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
