cask "cluster" do
  version "1.5.122"
  sha256 "986bc712d7ba7ef0a19fb1cefbf7730f5957f232316bba839c4f3351252dacdb"

  url "https://github.com/ManuelRix-11/Cluster-Releases/releases/download/v#{version}/Cluster-#{version}-arm64.dmg"
  name "Cluster"
  desc "App didattica per studenti"
  homepage "https://github.com/ManuelRix-11/Cluster-Releases"

  depends_on arch: :arm64

  app "Cluster.app"
end
