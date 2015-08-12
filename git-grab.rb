class GitGrab < Formula
  desc "A simple shell script that allows a user to grab and download a " + \
       "sub-directory from a Git repo."
  homepage "https://github.com/h4w5/git-grab"
  url "https://github.com/h4w5/git-grab/archive/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "1ae66eac8887bcb5c071e344dc37e78d749cd1715bb8e883cbec75128d058fb0"

  depends_on "svn"

  def install
    bin.install "git-grab"
    bin.install "git-ls-sub"
  end

  test do
    system "git grab", "https://github.com/h4w5/git-grab/blob/master/README.md"
  end
end
