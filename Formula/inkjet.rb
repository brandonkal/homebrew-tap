class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "3.0.0"
  license = "MIT"

  on_macos do
    on_arm do
      url "https://github.com/brandonkal/inkjet/releases/download/v3.0.0/inkjet-v3.0.0-aarch64-apple-darwin.zip"
      sha256 "41bf961f1a3704392784e1754a5123a2e80d459ecaec754e8b801c5a48879fbb"
    end
    on_intel do
      url "https://github.com/brandonkal/inkjet/releases/download/v3.0.0/inkjet-v3.0.0-x86_64-apple-darwin.zip"
      sha256 "a66772023692ba5477b226cdc4b518befe17810e144d6b72c125ff40d3b96ad3"
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
