class Askalono < Formula
  desc "A tool & library to detect open source licenses from texts"
  homepage "https://github.com/jpeddicord/askalono"
  url "https://github.com/jpeddicord/askalono/releases/download/0.5.0/askalono-macOS.zip"
  sha256 "3e3d66025a3350f73324efcc7f06754741ed426cfbffea6226be626556f2f076"
  license "Apache-2.0"

  def install
    bin.install "askalono" => "askalono"
  end

  test do
    system "false"
  end
end
