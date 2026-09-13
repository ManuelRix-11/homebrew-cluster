cask "cluster" do
  version "1.5.1"
  sha256 "ed3efb39b87fca11f176a5298d8a3da7230a3fc75402569234f16382b7ca38ad"

  url "https://github.com/ManuelRix-11/Cluster-Releases/releases/download/v#{version}/Cluster-#{version}-arm64.dmg"
  name "Cluster"
  desc "App didattica per studenti"
  homepage "https://github.com/ManuelRix-11/Cluster-Releases"

  depends_on arch: :arm64

  app "Cluster.app"
end