# Written by scripts/publish.sh in the tailapps CLI repo on each release. Edits here are overwritten.
class Tailapps < Formula
  desc "Send to and listen on your TailApps apps from any machine"
  homepage "https://tailapps.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://dl.tailapps.com/cli/v0.1.0/tailapps_darwin_arm64.tar.gz"
      sha256 "90504a5f2cf66c1282ab32a6482d86eace2d35b6cb144fe6032deae440f18ea5"
    end
    on_intel do
      url "https://dl.tailapps.com/cli/v0.1.0/tailapps_darwin_amd64.tar.gz"
      sha256 "01dad1e1c16ad9c701c142e25fd72c96396439055fe24f6ad8492049d45d7562"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.tailapps.com/cli/v0.1.0/tailapps_linux_arm64.tar.gz"
      sha256 "9a65abffd816dac254e36661ef5958ed5d8fd8fc8a4e9d1586d2f837af3b5747"
    end
    on_intel do
      url "https://dl.tailapps.com/cli/v0.1.0/tailapps_linux_amd64.tar.gz"
      sha256 "2b45da431f655e4d71f5bac110aa8db228064dde1fe61f7b95fdd26d1a30ae06"
    end
  end

  def install
    bin.install "tailapps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tailapps version")
  end
end
