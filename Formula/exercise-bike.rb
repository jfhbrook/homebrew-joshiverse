require "language/node"

class ExerciseBike < Formula
  desc "A command line interface for nunjucks"
  homepage "https://github.com/jfhbrook/public/tree/main/old-memes/exercise-bike"
  url "https://registry.npmjs.org/exercise-bike/-/exercise-bike-2.0.1.tgz"
  sha256 "4531b99d66d0bf20b126dcec2724e08a12e924ba02d192699e3beba4cc3b4aa5"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"exercise-bike", "--help"
  end
end
