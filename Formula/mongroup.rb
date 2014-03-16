require "formula"

class Mongroup < Formula
  homepage "https://github.com/jgallen23/mongroup"
  url "https://github.com/jgallen23/mongroup/archive/0.4.1.tar.gz"
  sha1 "fa0f7b1e43ff3963f4851f378478a86a362dd345"

  bottle do
    cellar :any
    sha1 "4bbb2d481dfe45155e4dee9d19dcb6bfa7ebb4a0" => :mavericks
    sha1 "3509859c251caa6902fe5647ef1e76db63efbab4" => :mountain_lion
    sha1 "99a09ceb9c043124e1210ccc253e15812dd4ab4a" => :lion
  end

  depends_on "mon"

  def install
    bin.mkpath
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/mongroup", "-V"
  end
end
