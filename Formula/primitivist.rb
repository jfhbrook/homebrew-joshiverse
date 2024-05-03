require "language/node"

class Primitivist < Formula
  desc "an options parser for bash scripts based on minimist"
  homepage "https://github.com/jfhbrook/public/tree/main/old-memes/primitivist"
  url "https://registry.npmjs.org/primitivist/-/primitivist-1.1.0.tgz"
  sha256 "afd2f5016e438db5f32a1bd416f894b6d183a7d6a2d422bbd5b3a816dbb7d39b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/bash", "-c", "eval $(#{bin}/primitivist -B foo -B bar -S baz -- --foo --baz quuz a b c)"
  end
end
