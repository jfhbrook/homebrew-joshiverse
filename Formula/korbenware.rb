# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Korbenware < Formula
  desc "linux/unix desktop cli software"
  homepage "https://github.com/jfhbrook/public/tree/korbenware-0.7.0-1/korbenware"
  url "https://github.com/jfhbrook/public/releases/download/korbenware-0.7.0-1/korbenware-0.7.0.tar.gz"
  sha256 "cd7a34d564f4fdf6a3fd01161e6a38987f835a4bdb8bcb22b61f0e91d6618ad8"
  license "MPL-2.0"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test korbenware`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
