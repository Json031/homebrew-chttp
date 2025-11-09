class Chttp < Formula
  desc "A open-source C library for http request"
  homepage "https://github.com/json031/chttp"
  url "https://github.com/json031/chttp/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "6fd22b6cfad7078180b3fd76f4a2c1970672015786701c90595d91037320e1ba"
  license "MIT"

  depends_on "pkg-config" => :build
  depends_on "curl"
  depends_on "cjson"

  def install
    system "make"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "echo", "chttp installed"
  end
end
