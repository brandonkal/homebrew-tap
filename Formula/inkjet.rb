class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "0.10.0"

  if OS.mac?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.10.0/inkjet-darwin.tar.gz"
    sha256 "6e65298dd4e8c7184919ce6e754b9661e857463a5ad5d4009bb7c9ef77cb9273"
  elsif OS.linux?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.10.0/inkjet-linux.tar.gz"
    sha256 "858593fa7dfd4f34ac5984348d65b12d4a23c4dad6ee464f37da870242561f85"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "inkjet"
  end

  test do
    system "#{bin}/inkjet", "--version"
  end
end
