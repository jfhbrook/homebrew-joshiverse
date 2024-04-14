# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require "language/node"

class Concurrently < Formula
  desc "Run commands concurrently"
  homepage "https://github.com/open-cli-tools/concurrently#readme"
  url "https://registry.npmjs.org/concurrently/-/concurrently-8.2.2.tgz"
  sha256 "d15e7308ff7a92f26cefe0c8bfbb2dd9791fbe0c2e4122732e0cc6677f1c40a9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"concurrently", "touch foo", "touch bar"
    assert_predicate testpath/"foo", :exist?, "foo was created"
    assert_predicate testpath/"bar", :exist?, "bar was created"
  end
end
