class Honepad < Formula
  include Language::Python::Virtualenv

  desc "Local CLI for public practice problems"
  homepage "https://github.com/honepad/honepad"
  url "https://github.com/honepad/honepad/releases/download/v0.2.1/honepad-0.2.1.tar.gz"
  sha256 "4e0b39b452319a37da611eaf74ffd27738a2f36779f53fe1ac5f9da6ba00ef51"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "languages", shell_output("#{bin}/honepad langs")
  end
end
