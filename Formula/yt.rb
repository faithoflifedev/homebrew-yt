class Yt < Formula
  desc "Native Dart interface to multiple YouTube REST APIs including the Data API, Live Streaming API and Cloud Vision API."
  homepage "https://github.com/faithoflifedev/yt"
  url "https://api.github.com/repos/faithoflifedev/yt/tarball/v2.2.0-dev.1"
  sha256 "ec8f564de599f0ba131d3fc4c0b4b9f093e197b83059d2ca944b2b21b2f3ae6d"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/yt.dart", "-o", "yt"
    bin.install "yt"
  end
  
  test do
    assert_match "obs_websocket v2.2.0-dev.1", shell_output("bin/yt version")
  end
end