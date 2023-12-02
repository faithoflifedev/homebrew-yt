class Yt < Formula
  desc "Native Dart interface to multiple YouTube REST APIs including the Data API."
  homepage "https://github.com/faithoflifedev/yt"
  url "https://api.github.com/repos/faithoflifedev/yt/tarball/v2.2.5+1"
  sha256 "67525f6187df5d2193e9ac7dabcaee2861cedc0bda3b0d56b601a469391612c9"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/yt.dart", "-o", "yt"
    bin.install "yt"
  end
  
  test do
    assert_match "obs_websocket v2.2.5+1", shell_output("bin/yt version")
  end
end