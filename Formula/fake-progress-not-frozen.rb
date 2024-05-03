# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require "language/node"

class FakeProgressNotFrozen < Formula
  desc "a shitpost-y fake progress bar"
  homepage "https://github.com/jfhbrook/public/tree/main/old-memes/fake-progress-not-frozen"
  url "https://registry.npmjs.org/@jfhbrook/fake-progress-not-frozen/-/fake-progress-not-frozen-1.1.0.tgz"
  sha256 "d070b467994eb985efa254f5a346ef353b68c8990025d84fcdf8ecd214e696dd"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test @jfhbrook/fake-progress-not-frozen`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/fake-progress-not-frozen", "node", "-e", "setTimeout(() => console.log('done'), 1000)"
  end
end
