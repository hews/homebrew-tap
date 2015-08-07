class GitGrab < Formula
  desc "A simple shell script that allows a user to grab and download a " + \
       "sub-directory from a Git repo."
  homepage "https://github.com/h4w5/git-grab"
  url "https://github.com/h4w5/git-grab/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "49f9dac555aaba1ae1050b5c8c81b7837ee7a3611385ef312c15bed63da3a352"

  depends_on "svn"

  def install
    bin.install "git-grab"
    bin.install "git-ls-sub"
  end
end
