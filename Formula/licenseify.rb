# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require "language/node"

class Licenseify < Formula
  desc "A tiny CLI to generate license files."
  homepage "https://npm.im/licenseify"
  url "https://registry.npmjs.org/licenseify/-/licenseify-1.1.3.tgz"
  sha256 "5c41ca4957209499a6c5e9bb9d2f8573c600a17bef6809f21c5b0067043ee362"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
