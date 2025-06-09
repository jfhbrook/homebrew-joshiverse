class Pyp2spec < Formula
  desc "pyp2spec is a tech preview. It is a tool generating Fedora RPM spec files for Python distributions."
homepage "https://github.com/befeleme/pyp2spec"
  url "https://github.com/jfhbrook/public/releases/download/copr-tools-1.1.0/copr-tools-1.1.0.tar.gz"
  sha256 "bc8e672bab1614a88bb0e75f7f29a098682ed9ea849e1c0e13dd911023904a39"
  license "MIT"

  depends_on "bash" => :recommended
  depends_on "docker" => :optional

  def install
    bin.install "bin/pyp2spec" => "pyp2spec"
  end

  test do
    system "false"
  end
end
