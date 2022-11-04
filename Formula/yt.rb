class Yt < Formula
  desc "Native Dart interface to multiple YouTube REST APIs including the Data API, Live Streaming API and Cloud Vision API."
  homepage "https://github.com/faithoflifedev/yt"
  url "https://api.github.com/repos/faithoflifedev/yt/tarball/v2.0.6+5"
  sha256 "3093c4e5730c5dd1bb23066fee67d2c1d3b29bbe05009e35cee16c1f79585e4d"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/yt.dart", "-o", "yt"
    bin.install "yt"
  end
  
  test do
    assert_match "obs_websocket v2.0.6+5", shell_output("bin/yt version")
  end
end