cask "openshelf" do
  version "0.4.3"
  sha256 "6cb1f83b60d102642177b246436135a30582a9191c02080069686f49e4f025b7"

  url "https://github.com/brian4685380/OpenShelf/releases/download/v#{version}/OpenShelf-v#{version}-macOS.zip"
  name "OpenShelf"
  desc "Lightweight file shelf for macOS"
  homepage "https://github.com/brian4685380/OpenShelf"

  depends_on macos: :ventura

  app "OpenShelf.app"
  binary "#{appdir}/OpenShelf.app/Contents/MacOS/shelf", target: "shelf"

  uninstall quit: "com.brianyuan.OpenShelf"

  zap trash: [
    "~/Library/Preferences/com.brianyuan.OpenShelf.plist",
  ]
end
