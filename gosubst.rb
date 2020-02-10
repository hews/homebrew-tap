class Gosubst < Formula
  desc "Command line env var expansion and Go templating."
  homepage "https://github.com/hews/gosubst"
  url "https://github.com/hews/gosubst/archive/v0.4.0.tar.gz"
  sha256 "4a82c29a7bb9527e4386da039b2e2032cca7a3581630e162e4395e23883cb10d"

  depends_on "go" => :build

  def install
    commit = "4dac493e144d3ffb9decae7306ca0e9e0656ea82"
    tag = "v0.4.0"
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
