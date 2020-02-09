class Gosubst < Formula
  desc "Command line env var expansion and Go templating."
  homepage "https://github.com/hews/gosubst"
  url "https://github.com/hews/gosubst/archive/v0.2.1.tar.gz"
  sha256 "8e8a6f9c3491bf3278af2fc4f43c5517ee115c0a0f144093aa3b8de7abf2b8a4"

  depends_on "go" => :build

  def install
    commit = "273b75809ad0718d150df54fde0ae5383ee87602"
    tag = "v0.2.1"
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
