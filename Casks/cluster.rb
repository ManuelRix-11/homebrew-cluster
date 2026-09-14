cask "cluster" do
  version "1.5.12"
  sha256 "70316df993fd47d585f9d70cb8245668e154f2f9e8d5cfca3b14bbd951fdc486"

  url "https://github.com/ManuelRix-11/Cluster-Releases/releases/download/v#{version}/Cluster-#{version}-arm64.dmg"
  name "Cluster"
  desc "App didattica per studenti"
  homepage "https://github.com/ManuelRix-11/Cluster-Releases"

  depends_on arch: :arm64

  app "Cluster.app"
end
