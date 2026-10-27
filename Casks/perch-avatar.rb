cask "perch-avatar" do
  version "0.1.0"
  sha256 "9c3f4dff35aaef0a74f07ae6b21ef262dc0bb3e78ee8160d524d85620fe947ee"

  url "https://github.com/masqueradeljb/perch-avatar/releases/download/v#{version}/Perch-#{version}.dmg"
  name "Perch"
  desc "Desktop pet that perches on the window your coding agent is working in"
  homepage "https://github.com/masqueradeljb/perch-avatar"

  depends_on macos: ">= :sonoma"

  app "Perch.app"

  caveats <<~EOS
    Connect your agents with the CLI:
      npm i -g perch-avatar && perch setup
  EOS

  zap trash: "~/.perch"
end
