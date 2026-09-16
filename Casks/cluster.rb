cask "cluster" do
  version "1.5.122"
  sha256 "cf6ab3e18ebcad6a47bc26152d814ba6ba91bc3405a492dfbbf6fc57508cfe32"

  url "https://github.com/ManuelRix-11/Cluster-Releases/releases/download/v#{version}/Cluster-#{version}-arm64.dmg"
  name "Cluster"
  desc "App didattica per studenti"
  homepage "https://github.com/ManuelRix-11/Cluster-Releases"

  depends_on arch: :arm64

  app "Cluster.app"
end
