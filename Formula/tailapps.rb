# Written by scripts/publish.sh in the tailapps CLI repo on each release. Edits here are overwritten.
class Tailapps < Formula
  desc "Send to and listen on your TailApps apps from any machine"
  homepage "https://tailapps.com"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://dl.tailapps.com/cli/v0.2.0/tailapps_darwin_arm64.tar.gz"
      sha256 "2b46fb0c775f0827996a60a0cf372624d8d3ba7cf82f94d533f925edbda0674e"
    end
    on_intel do
      url "https://dl.tailapps.com/cli/v0.2.0/tailapps_darwin_amd64.tar.gz"
      sha256 "98c1a0d6f40c8f48981df1f8b902b642693f5846dadd767cd40adfa842ee45bc"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.tailapps.com/cli/v0.2.0/tailapps_linux_arm64.tar.gz"
      sha256 "8b1f72546b000bf85488ca013b04548b525b47b05b2d88b0fd6bace2177f4058"
    end
    on_intel do
      url "https://dl.tailapps.com/cli/v0.2.0/tailapps_linux_amd64.tar.gz"
      sha256 "d749cc50fa3c62ec6cc645e613238c107449c8c3211e3a8906aae1fb441f05f0"
    end
  end

  def install
    bin.install "tailapps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tailapps version")
  end
end
