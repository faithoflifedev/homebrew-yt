class Yt < Formula
  desc "Native Dart interface to multiple YouTube REST APIs including the Data API."
  homepage "https://github.com/faithoflifedev/yt"
  url "https://api.github.com/repos/faithoflifedev/yt/tarball/v2.2.5"
  sha256 "b2c9d3efa20ce69339b1532ae48910eec782bb92a91ddb30b415d83a3a779027"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/yt.dart", "-o", "yt"
    bin.install "yt"
  end
  
  test do
    assert_match "obs_websocket v2.2.5", shell_output("bin/yt version")
  end
end