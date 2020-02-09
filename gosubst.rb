class Gosubst < Formula
  desc "Command line env var expansion and Go templating."
  homepage "https://github.com/hews/gosubst"
  url "https://github.com/hews/gosubst/archive/v0.3.0.tar.gz"
  sha256 "49e3de26cf215639496aaed7bc5d0d1c8b363a42e715b4d867c88d2fc87e962c"

  depends_on "go" => :build

  def install
    commit = "e6c726f78077bd12429594c49feb9a2d43c92d76"
    tag = "v0.3.0"
    sprig = "v3.0.2"

    system \
      "go", "build",
      "-ldflags",
      "-X main.VersionRelease=#{tag} "  \
      "-X main.VersionBuild=#{commit} " \
      "-X main.VersionSprig=#{sprig}",
      "."
    bin.install "gosubst"
  end

  test do
    system bin/"gosubst", "--version"
  end
end
