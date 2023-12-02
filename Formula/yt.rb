class Yt < Formula
  desc "Native Dart interface to multiple YouTube REST APIs including the Data API."
  homepage "https://github.com/faithoflifedev/yt"
  url "https://api.github.com/repos/faithoflifedev/yt/tarball/v2.2.5+2"
  sha256 "0a6cf10345cffba95a56bfb58ef944d74e97b391323ca1ece19670cbb05d91af"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/yt.dart", "-o", "yt"
    bin.install "yt"
  end
  
  test do
    assert_match "obs_websocket v2.2.5+2", shell_output("bin/yt version")
  end
end