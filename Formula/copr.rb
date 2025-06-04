class Copr < Formula
  desc "COPR is lightweight build system. It allows you to create new project in WebUI, and submit new builds and COPR will create yum repository from latests builds."
  homepage "https://github.com/fedora-copr/copr"
  url "https://github.com/jfhbrook/public/releases/download/copr-tools-1.0.0/copr-tools-1.0.0.tar.gz"
  sha256 "ff6693c00ad3ab3fd66011c78ab805fc0458211e600ad044d39a786c4131c66a"
  license "MIT"

  depends_on "bash" => :recommended
  depends_on "docker" => :optional

  def install
    bin.install "bin/copr" => "copr"
  end

  test do
    system "false"
  end
end
