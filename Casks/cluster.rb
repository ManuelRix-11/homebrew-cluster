cask "cluster" do
  version "1.5.122"
  sha256 "ff68af4068283783fd1466f088910ed00926270c517e53990a3c6722bfe2c9fc"

  url "https://github.com/ManuelRix-11/Cluster-Releases/releases/download/v#{version}/Cluster-#{version}-arm64.dmg"
  name "Cluster"
  desc "App didattica per studenti"
  homepage "https://github.com/ManuelRix-11/Cluster-Releases"

  depends_on arch: :arm64

  app "Cluster.app"

  # ponytail: rimozione quarantena e firma ad-hoc locale per bypass Gatekeeper macOS
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/Cluster.app"],
                   sudo: false
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{appdir}/Cluster.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Cluster",
    "~/Library/Logs/Cluster",
    "~/Library/Preferences/com.cluster.desktop.plist",
  ]
end
