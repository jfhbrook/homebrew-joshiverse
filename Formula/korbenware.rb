class Korbenware < Formula
  desc "linux/unix desktop cli software"
  homepage "https://github.com/jfhbrook/public/tree/main/korbenware"
  url "https://github.com/jfhbrook/public/releases/download/korbenware-1.0.0-1/korbenware-1.0.0.tar.gz"
  sha256 "f4e2933bba7e8256d89296b1aeac226c1b603de02f553548f80285c995639f68"
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
