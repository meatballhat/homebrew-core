class Gimme < Formula
  desc "Shell script to install any Go version"
  homepage "https://github.com/urfave/gimme"
  url "https://github.com/urfave/gimme/archive/v1.6.0.tar.gz"
  sha256 "437e6daf4297755b25396720f0a3a613dbada7988c89c7184c6e259674bd7555"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, all: "fd677d17e7c2316bce3c567ce9cc708b2c3e6bf57ed867f64554e202b7b78746"
  end

  def install
    bin.install "gimme"
  end

  test do
    system "#{bin}/gimme", "-l"
  end
end
