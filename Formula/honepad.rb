class Honepad < Formula
  include Language::Python::Virtualenv

  desc "Local CLI for public practice problems"
  homepage "https://github.com/honepad/honepad"
  url "https://github.com/honepad/honepad/releases/download/v0.2.6/honepad-0.2.6.tar.gz"
  sha256 "743768e2ab5c658577e5a19e30e30655f28ed1dcca145b2337dfa69cc828c9cf"
  license "Apache-2.0"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "languages", shell_output("#{bin}/honepad langs")
  end
end
