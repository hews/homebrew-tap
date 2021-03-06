class GitGrab < Formula
  desc "A simple shell script that allows a user to grab and download a " + \
       "sub-directory or file from a Git repo."

  homepage "https://github.com/hews/git-grab"
  url      "https://github.com/hews/git-grab/archive/v0.2.1.tar.gz"
  version  "0.2.1"
  sha256   "70e23c74a894ea913de0f190d669c85265518eb4ad79a8e363c2a5666b9abf87"

  depends_on "svn"

  def install
    bin.install "git-grab"
    bin.install "git-ls-sub"
  end

  test do
    system "git grab", "https://github.com/hews/git-grab/blob/master/README.md"
  end
end
