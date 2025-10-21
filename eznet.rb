class Eznet < Formula
  desc "Comprehensive network testing CLI tool with port scanning and SSL certificate analysis"
  homepage "https://github.com/batr7434/eznet"
  url "https://github.com/batr7434/eznet/archive/v0.2.0.tar.gz"
  sha256 "24b8dae0bf455b446b5f9a53dbc44310c0241dd226ce80c7372246240b9a782b"
  license "Apache-2.0"
  head "https://github.com/batr7434/eznet.git", branch: "main"

  depends_on "python@3.12"

  def install
    # Create a virtual environment
    venv = virtualenv_create(libexec, "python3.12")
    
    # Install the package in the virtual environment
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "EZNet", shell_output("#{bin}/eznet --help")
    system bin/"eznet", "--version"
  end
end