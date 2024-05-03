class Korbenware < Formula
  desc "linux/unix desktop cli software"
  homepage "https://github.com/jfhbrook/public/tree/main/korbenware"
  url "https://github.com/jfhbrook/public/releases/download/korbenware-0.7.0-1/korbenware-0.7.0.tar.gz"
  sha256 "cd7a34d564f4fdf6a3fd01161e6a38987f835a4bdb8bcb22b61f0e91d6618ad8"
  license "MPL-2.0"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "false"
  end
end
