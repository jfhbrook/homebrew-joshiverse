class Korbenware < Formula
  desc "linux/unix desktop cli software"
  homepage "https://github.com/jfhbrook/public/tree/main/korbenware"
  url "https://github.com/jfhbrook/public/releases/download/korbenware-1.0.1-1/korbenware-1.0.1.tar.gz"
  sha256 "481eac21be51397159e76d5033308bceb4b374a346affbe0f4195af7c4b3b753"
  license "MPL-2.0"

  depends_on "bat" => :recommended
  depends_on "fzf"
  depends_on "poppler" => :recommended
  depends_on "python"
  depends_on "viu"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
