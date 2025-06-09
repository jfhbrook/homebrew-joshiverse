class Coprctl < Formula
  desc "IaC for COPR"
  homepage "https://github.com/jfhbrook/public/tree/main/copr-tools"
  url "https://github.com/jfhbrook/public/releases/download/copr-tools-1.1.0/copr-tools-1.1.0.tar.gz"
  sha256 "bc8e672bab1614a88bb0e75f7f29a098682ed9ea849e1c0e13dd911023904a39"
  license "MIT"

  depends_on "bash" => :recommended
  depends_on "docker" => :optional

  def install
    bin.install "bin/coprctl" => "coprctl"
  end

  test do
    system "false"
  end
end
