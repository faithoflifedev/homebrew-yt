class Yt < Formula
  desc "Native Dart interface to multiple YouTube REST APIs including the Data API."
  homepage "https://github.com/faithoflifedev/yt"
  url "https://api.github.com/repos/faithoflifedev/yt/tarball/v2.2.1"
  sha256 "1193f6e8911941ee577a2442e91d555ff50842f31acaa622bd4a8f8bb02eec53"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/yt.dart", "-o", "yt"
    bin.install "yt"
  end
  
  test do
    assert_match "obs_websocket v2.2.1", shell_output("bin/yt version")
  end
end