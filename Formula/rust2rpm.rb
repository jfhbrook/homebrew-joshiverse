class Rust2rpm < Formula
  desc "rust2rpm is a tool that automates the generation of RPM spec files for Rust crates."
  homepage "https://pagure.io/fedora-rust/rust2rpm"
  url "https://github.com/jfhbrook/public/releases/download/copr-tools-1.0.0/copr-tools-1.0.0.tar.gz"
  sha256 "ff6693c00ad3ab3fd66011c78ab805fc0458211e600ad044d39a786c4131c66a"
  license "MIT"

  depends_on "bash" => :recommended
  depends_on "docker" => :optional

  def install
    bin.install "bin/rust2rpm" => "rust2rpm"
  end

  test do
    system "false"
  end
end
