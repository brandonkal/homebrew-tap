class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "2.0.1"
  license = "MIT"

  on_macos do
    on_arm do
      url "https://github.com/brandonkal/inkjet/releases/download/v2.0.1/inkjet-v2.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "50fe7c948ab6dbe0b00b457769cc750c01f5943a3aac07bf4258fa2e3b2ea5fe"
    end
    on_intel do
      url "https://github.com/brandonkal/inkjet/releases/download/v2.0.1/inkjet-v2.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "1c0e549a9e928dcf32bcaab896761f1176e16408bba29ff2ce2e798ddb7471ed"
    end
  end

  def install
    bin.install "inkjet"

    bash_completion.install "completions/inkjet.bash" => "inkjet.bash"
    fish_completion.install "completions/inkjet.fish" => "inkjet.fish"
    man1.install "inkjet.1"
  end

  test do
    system "#{bin}/inkjet", "--version"
  end
end
