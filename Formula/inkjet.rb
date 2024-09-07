class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "0.15.0"
  license = "MIT"

  on_macos do
    on_arm do
      url "https://github.com/brandonkal/inkjet/releases/download/untagged-28e054c9cf0e994b0494/inkjet-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "1fc210eae8ce1d35b4db3a144e0c554120942376e639d47dcb0c8b17bf43d518"
    end
    on_intel do
      url "https://github.com/brandonkal/inkjet/releases/download/untagged-28e054c9cf0e994b0494/inkjet-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "ebbae940a933b49ac7e0b267d710c6b0d3255afbee94c91c0e689d901b1d7ab2"
    end
  end

  resource "completions" do
    url "https://github.com/brandonkal/inkjet/releases/download/untagged-c99d005c4ff3882ef721/completions.tar.gz"
    sha256 "b99d3d9a0cd8b169ee69926e123419f9949d2b4953bfe9c49930417cb3f4c258"
  end

  def install
    bin.install "inkjet"

    resource("completions").stage do
      bash_completion.install "inkjet.bash" => "inkjet.bash"
      fish_completion.install "inkjet.fish" => "inkjet.fish"
    end
  end

  test do
    system "#{bin}/inkjet", "--version"
  end
end
