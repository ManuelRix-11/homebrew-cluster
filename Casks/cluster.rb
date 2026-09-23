cask "cluster" do
  version "1.5.122"
  sha256 "c7cc7fd7de407e40f64ba23663727a773a9f2a3a1fe9bf3c5f8838429af6c9ff"

  url "https://github.com/ManuelRix-11/Cluster-Releases/releases/download/v#{version}/Cluster-#{version}-arm64.dmg"
  name "Cluster"
  desc "App didattica per studenti"
  homepage "https://github.com/ManuelRix-11/Cluster-Releases"

  depends_on arch: :arm64

  app "Cluster.app"
end
