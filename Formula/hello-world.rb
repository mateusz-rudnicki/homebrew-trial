class HelloWorld < Formula
  desc "Example bash based hello-world implementation"
  homepage "https://github.com/mateusz-rudnicki/hello-world"
  url "https://github.com/mateusz-rudnicki/hello-world/archive/0.1.tar.gz"
  sha256 "5ae6953b568802a47dac07434f53a6af6b4791a0e54639eea2ac65468355d6fe"
  license "GPL-3.0-or-later"

  def install
    system "mkdir -p #{bin} && cp bin/hello-world #{bin}/hello-world"
  end

  test do
    assert_equal "Hello, World!", shell_output("#{bin}/hello-world").strip
  end
end
