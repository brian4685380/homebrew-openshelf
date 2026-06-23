cask "openshelf" do
  version "0.4.1"
  sha256 "5153c1a02a1a1df436afa04f29c5fe3606e240496c46da5d21641a12f4af4c63"

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
