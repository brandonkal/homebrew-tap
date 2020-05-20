class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "0.9.0"

  if OS.mac?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.9.0/inkjet-darwin.tar.gz"
    sha256 "65cc14aea739e6602c07729bd7fea2bd4460e45701fad7ad96a1d55894054ab5"
  elsif OS.linux?
    url "https://github.com/brandonkal/inkjet/releases/download/v0.9.0/inkjet-linux.tar.gz"
    sha256 "0972e126194238130eba358118035b894243ae86df7a98e3c892ff643e9cddad"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "inkjet"
  end

  test do
    system "#{bin}/inkjet", "--version"
  end
end
