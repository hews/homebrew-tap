class GitGrab < Formula
  desc "A simple shell script that allows a user to grab and download a " + \
       "sub-directory or file from a Git repo."

  homepage "https://github.com/hews/git-grab"
  url      "https://github.com/hews/git-grab/archive/v0.2.0.tar.gz"
  version  "0.2.0"
  sha256   "d1eca448f6a64b30acff745fa96f1a15cf3a6d14c1c726c18eb63ab37053cd1d"

  depends_on "svn"

  def install
    bin.install "git-grab"
    bin.install "git-ls-sub"
  end

  test do
    system "git grab", "https://github.com/hews/git-grab/blob/master/README.md"
  end
end
