class Go2rpm < Formula
  desc "Convert Go packages to RPM."
  homepage "https://gitlab.com/fedora/sigs/go/go2rpm"
  url "https://github.com/jfhbrook/public/releases/download/copr-tools-1.1.0/copr-tools-1.1.0.tar.gz"
  sha256 "bc8e672bab1614a88bb0e75f7f29a098682ed9ea849e1c0e13dd911023904a39"
  license "MIT"

  depends_on "bash" => :recommended
  depends_on "docker" => :optional

  def install
    bin.install "bin/go2rpm" => "go2rpm"
  end

  test do
    system "false"
  end
end
