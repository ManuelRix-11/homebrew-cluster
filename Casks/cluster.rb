cask "cluster" do
  version "1.5.122"
  sha256 "8b3d16ab6ac7fa6c9d12af89e1f3b939ce5c45af752445b8dcb4f7db693fd5f6"

  url "https://github.com/ManuelRix-11/Cluster-Releases/releases/download/v#{version}/Cluster-#{version}-arm64.dmg"
  name "Cluster"
  desc "App didattica per studenti"
  homepage "https://github.com/ManuelRix-11/Cluster-Releases"

  depends_on arch: :arm64

  app "Cluster.app"
end
