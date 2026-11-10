class Honepad < Formula
  include Language::Python::Virtualenv

  desc "Local CLI for public practice problems"
  homepage "https://github.com/honepad/honepad"
  url "https://github.com/honepad/honepad/releases/download/v0.2.8/honepad-0.2.8.tar.gz"
  sha256 "13d212fad4c55dcacb993e2a926dd4cfac537ea8b2b2af2fd01f61cf8043979b"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "languages", shell_output("#{bin}/honepad langs")
  end
end
