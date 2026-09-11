class Honepad < Formula
  include Language::Python::Virtualenv

  desc "Local CLI for public practice problems"
  homepage "https://github.com/honepad/honepad"
  url "https://github.com/honepad/honepad/releases/download/v0.1.0/honepad-0.1.0.tar.gz"
  sha256 "03a9a9daa36ad769ed93dec5552d2f85c8014dd9d95483c9b8cd6c193b3fc958"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "languages", shell_output("#{bin}/honepad langs")
  end
end
