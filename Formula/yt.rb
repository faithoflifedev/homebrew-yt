class Yt < Formula
  desc "Native Dart interface to multiple YouTube REST APIs including the Data API, Live Streaming API and Cloud Vision API."
  homepage "https://github.com/faithoflifedev/yt"
  url "https://api.github.com/repos/faithoflifedev/yt/tarball/v2.2.0-dev.2"
  sha256 "a3b38b0312d21562f3c2ce18e506ec38a722e7bfab585433ebc18cd2e8862221"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/yt.dart", "-o", "yt"
    bin.install "yt"
  end
  
  test do
    assert_match "obs_websocket v2.2.0-dev.2", shell_output("bin/yt version")
  end
end