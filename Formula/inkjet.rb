class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "0.8.0"

  if OS.mac?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.8.0/inkjet-mac.tar.gz"
    sha256 "96b99d61ca91f7e52d1c1f4cfe6278305bf61b1390222053ce2c312e8bf2a8f1"
  elsif OS.linux?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.8.0/inkjet-linux.tar.gz"
    sha256 "af13b11ab89bb454234d7b2b3b51e124815bb63a77e33bce2fed032e105fc81a"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "inkjet"
  end

  test do
    system "#{bin}/inkjet", "--version"
  end
end
