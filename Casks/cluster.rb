cask "cluster" do
  version "1.5.122"
  sha256 "d3723648c5a3bc1453f85a276fed056b7aacff4c20dcad1989c7f15d6afba5a5"

  url "https://github.com/ManuelRix-11/Cluster-Releases/releases/download/v#{version}/Cluster-#{version}-arm64.dmg"
  name "Cluster"
  desc "App didattica per studenti"
  homepage "https://github.com/ManuelRix-11/Cluster-Releases"

  depends_on arch: :arm64

  app "Cluster.app"
end
