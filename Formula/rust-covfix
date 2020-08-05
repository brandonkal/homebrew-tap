class RustCovfix < Formula
  desc "Fix Rust coverage data based on source code"
  homepage "https://github.com/brandonkal/rust-covfix"
  version "1.0.0"

  if OS.linux?
    url "https://github.com/brandonkal/rust-covfix/releases/download/v1.0.0/rust-covfix-linux.tar.gz"
    sha256 "afc7428e1fa44524684cb41d4d5e295bfc487d31ef2825d32407bfdbf28c7e82"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "rust-covfix"
  end

  test do
    system "#{bin}/rust-covfix", "-V"
  end
end
