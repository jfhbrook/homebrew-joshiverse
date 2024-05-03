require "language/node"

class Cronkite < Formula
  desc "a baby task scheduler"
  homepage "https://github.com/jfhbrook/public/tree/main/old-memes/cronkite"
  url "https://registry.npmjs.org/@jfhbrook/cronkite/-/cronkite-1.0.0.tgz"
  sha256 "7422ed2590b55da14dc21c6107506af5bb9df1bea631ced94c6d39a851c52a41"
  license "Apache-2.0"

  depends_on ""

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "cronkite", "--help"
  end
end
