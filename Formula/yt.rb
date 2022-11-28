class Yt < Formula
  desc "Native Dart interface to multiple YouTube REST APIs including the Data API, Live Streaming API and Cloud Vision API."
  homepage "https://github.com/faithoflifedev/yt"
  url "https://api.github.com/repos/faithoflifedev/yt/tarball/v2.0.6+8"
  sha256 "d2d5ea098d6a65f6b60552e5f6530125c755d1b580e994456876ea44dac29587"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/yt.dart", "-o", "yt"
    bin.install "yt"
  end
  
  test do
    assert_match "obs_websocket v2.0.6+8", shell_output("bin/yt version")
  end
end