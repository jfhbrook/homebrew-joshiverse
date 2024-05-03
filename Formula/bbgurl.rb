require "language/node"

class Bbgurl < Formula
  desc "a command line http client built on top of undici"
  homepage "https://github.com/jfhbrook/public/tree/main/old-memes/bbgurl"
  url "https://registry.npmjs.org/bbgurl/-/bbgurl-2.1.3.tgz"
  sha256 "0db5ed3aa00c6c102acded47cd32cef5fa6e6d923b537090df5c697c9fee9293"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/bbgurl", "--help"
  end
end
