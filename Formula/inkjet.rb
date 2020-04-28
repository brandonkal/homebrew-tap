class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "0.8.1"

  if OS.mac?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.8.1/inkjet-darwin.tar.gz"
    sha256 "f978ba38c79ac9e9cf9a3d304fe27c4dfa6c0a1e2d74a57ca3f23443290e27b5"
  elsif OS.linux?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.8.1/inkjet-linux.tar.gz"
    sha256 "289a036db24e0a7b47196154c2a6e43da6ca1c7b02bcfa6bc06e9287b10aac67"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "inkjet"
  end

  test do
    system "#{bin}/inkjet", "--version"
  end
end
