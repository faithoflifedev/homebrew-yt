class Yt < Formula
  desc "Native Dart interface to multiple YouTube REST APIs including the Data API, Live Streaming API and Cloud Vision API."
  homepage "https://github.com/faithoflifedev/yt"
  url "https://api.github.com/repos/faithoflifedev/yt/tarball/v2.0.6+9"
  sha256 "01eb133acd108dd4d7c17ecf750f9c12c8445d79bfe580a6bb6593f409feeb1f"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/yt.dart", "-o", "yt"
    bin.install "yt"
  end
  
  test do
    assert_match "obs_websocket v2.0.6+9", shell_output("bin/yt version")
  end
end