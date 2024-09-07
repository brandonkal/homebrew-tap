class Inkjet < Formula
  desc "Make your markdown executable with inkjet, the interactive CLI task runner"
  homepage "https://github.com/brandonkal/inkjet"
  version "1.0.0"
  license = "MIT"

  on_macos do
    on_arm do
      url "https://github.com/brandonkal/inkjet/releases/download/v1.0.0/inkjet-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "9fa7be42e53c5644a56980b98ce8a649e4d2108f513bf7693fdd9b3a2767f41a"
    end
    on_intel do
      url "https://github.com/brandonkal/inkjet/releases/download/v1.0.0/inkjet-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "67f5afe52e26dc4275d73cb1a5efb8113f0739a7e727059cf6692a75ef44ad0c"
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
