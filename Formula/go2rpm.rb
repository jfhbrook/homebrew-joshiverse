# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Go2rpm < Formula
  include Language::Python::Virtualenv

  desc ""
  homepage ""
  url "https://files.pythonhosted.org/packages/41/0b/ef85d18ebaf63ee7ebd3050dbab0dae86aca749267eab38f6925db0011df/go2rpm-1.15.0.tar.gz"
  sha256 "1bfbff822862d3b6ae90fb9cf915b2f1742cec1b2a7c17b800f7f7b34f18ba1c"
  license ""

  depends_on "python@3.13"

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test go2rpm`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
