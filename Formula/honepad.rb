class Honepad < Formula
  include Language::Python::Virtualenv

  desc "Local CLI for public practice problems"
  homepage "https://github.com/honepad/honepad"
  url "https://github.com/honepad/honepad/releases/download/v0.2.9/honepad-0.2.9.tar.gz"
  sha256 "9b7d268c64474c011ee4f03f7a6a019d493dcc16a63dea6a1de20ac69bc3f312"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "languages", shell_output("#{bin}/honepad langs")
  end
end
