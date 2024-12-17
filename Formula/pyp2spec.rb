class Pyp2spec < Formula
  include Language::Python::Virtualenv

  desc "Generate a valid Fedora specfile from Python package from PyPI"
  homepage "https://github.com/befeleme/pyp2spec/"
  url "https://files.pythonhosted.org/packages/ba/16/d3bd5f08386e61f99e84d727d0114f9b8d01bb05d45913761ef6f1ba890d/pyp2spec-0.11.1.tar.gz"
  sha256 "ad51f7a88452e7b80f7f70896c25dcaf5420da369344619727e9457c9ccfbffe"
  license "MIT"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "false"
  end
end
