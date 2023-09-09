class Yt < Formula
  desc "Native Dart interface to multiple YouTube REST APIs including the Data API."
  homepage "https://github.com/faithoflifedev/yt"
  url "https://api.github.com/repos/faithoflifedev/yt/tarball/v2.2.3"
  sha256 "f996e83f5430f3ffc89ab979df920798f153c735efad9536653dbabeebf8eb8d"
  license "MIT"
  
  depends_on "dart-lang/dart/dart" => :build
  
  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/yt.dart", "-o", "yt"
    bin.install "yt"
  end
  
  test do
    assert_match "obs_websocket v2.2.3", shell_output("bin/yt version")
  end
end