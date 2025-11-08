class Chttp < Formula
  desc "A tiny C HTTP library using libcurl and cJSON"
  homepage "https://github.com/json031/chttp"
  url "https://github.com/json031/chttp/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "5da85d23cea10d1d57b52de054d91027f3c215ca9e00d0eb8e957c90b442b181"
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
