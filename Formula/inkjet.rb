class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "0.12.0"

  if OS.mac?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.12.0/inkjet-darwin.tar.gz"
    sha256 "fdfe3f06a220700fbdcb1f1427a394cf7d0d089feea6604d31d1f87162d5d870"
  elsif OS.linux?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.12.0/inkjet-linux.tar.gz"
    sha256 "1fb6566c203db2907aa35cd68ee3a7725a53961c26e1b45c29402aaa14274ff7"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "inkjet"
  end

  test do
    system "#{bin}/inkjet", "--version"
  end
end
