cask "cluster" do
  version "1.5.122"
  sha256 "1a05ef51813bb87ee4fb8f492c57a9f9fd1e718ad2a9d2c201a581c71af5a00b"

  url "https://github.com/ManuelRix-11/Cluster-Releases/releases/download/v#{version}/Cluster-#{version}-arm64.dmg"
  name "Cluster"
  desc "App didattica per studenti"
  homepage "https://github.com/ManuelRix-11/Cluster-Releases"

  depends_on arch: :arm64

  app "Cluster.app"

  # ponytail: rimozione quarantine necessaria per app senza firma Apple Developer
  postflight_steps do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "/Applications/Cluster.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Cluster",
    "~/Library/Logs/Cluster",
    "~/Library/Preferences/com.cluster.desktop.plist",
  ]
end
