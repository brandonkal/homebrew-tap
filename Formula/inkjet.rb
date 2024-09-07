class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "0.15.0"
  license = "MIT"

  on_macos do
    on_arm do
      url "https://github.com/brandonkal/inkjet/releases/download/v0.15.0/inkjet-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "dd0262a9efba7de1e80921fe5fd900ae5fc67b2d323196b6d21d4d7835232250"
    end
    on_intel do
      url "https://github.com/brandonkal/inkjet/releases/download/v0.15.0/inkjet-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "7efe4613c0852c6ff628e723fc9cf8dfcc5143b9c12bcb03818110ad4266b6e1"
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
