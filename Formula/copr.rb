class Copr < Formula
  desc "CLI tool to run Docker"
  homepage "https://github.com/fedora-copr/copr"
  url "https://github.com/jfhbrook/public/releases/download/coprctl-0.3.0-1/coprctl-0.3.0.tar.gz"
  sha256 "4fcee6b1d1cc9c70c7f99512979b38fc6f9b17184e83fa915be8e498b73b6c0c"
  license "MIT"

  depends_on "bash" => :recommended
  depends_on "docker" => :optional

  def install
    bin.install "bin/copr-docker" => "copr"
  end

  test do
    system "false"
  end
end
