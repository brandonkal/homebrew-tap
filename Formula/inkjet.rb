class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "0.10.0"

  if OS.mac?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.11.0/inkjet-darwin.tar.gz"
    sha256 "e0cc4938ffa051247ef9ef63ed0bb91e96c4e03f35d3ac4ad28526b1a18db730"
  elsif OS.linux?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.11.0/inkjet-linux.tar.gz"
    sha256 "8b209e40aed39aac76557d458cd7744af59afe2d278cc3f9e43ec66561d038dc"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "inkjet"
  end

  test do
    system "#{bin}/inkjet", "--version"
  end
end
