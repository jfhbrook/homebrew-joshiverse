class Korbenware < Formula
  desc "linux/unix desktop cli software"
  homepage "https://github.com/jfhbrook/public/tree/main/korbenware"
  url "https://github.com/jfhbrook/public/releases/download/korbenware-1.0.2-1/korbenware-1.0.2.tar.gz"
  sha256 "698115229b99bd9422137a079517a2de476091d9c4913155a67c3a11ac10a955"
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
