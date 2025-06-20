class Copr < Formula
  desc "COPR is lightweight build system. It allows you to create new project in WebUI, and submit new builds and COPR will create yum repository from latests builds."
  homepage "https://github.com/fedora-copr/copr"
  url "https://github.com/jfhbrook/public/releases/download/copr-tools-1.1.0/copr-tools-1.1.0.tar.gz"
  sha256 "bc8e672bab1614a88bb0e75f7f29a098682ed9ea849e1c0e13dd911023904a39"
  license "GPL-2.0-or-later"

  depends_on "bash" => :recommended
  depends_on "docker" => :optional

  def install
    bin.install "bin/copr" => "copr"
  end

  test do
    system "false"
  end
end
