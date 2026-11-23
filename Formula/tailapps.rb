# Written by scripts/publish.sh in the tailapps CLI repo on each release. Edits here are overwritten.
class Tailapps < Formula
  desc "Send to and listen on your TailApps apps from any machine"
  homepage "https://tailapps.com"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://dl.tailapps.com/cli/v0.4.0/tailapps_darwin_arm64.tar.gz"
      sha256 "e93c7de447427801c205bb835e6a6cb1bd37ac0a81ef578c513732f7dea3b719"
    end
    on_intel do
      url "https://dl.tailapps.com/cli/v0.4.0/tailapps_darwin_amd64.tar.gz"
      sha256 "fdb41f63aa737cf87c8803e74d580e25055ab90d0addc2039a25ac44cbb1b32f"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.tailapps.com/cli/v0.4.0/tailapps_linux_arm64.tar.gz"
      sha256 "8bbc7a84d1cfa5bcca598cbcc146bb5948623f5ba31d35a2d26a0cf21f2df4a3"
    end
    on_intel do
      url "https://dl.tailapps.com/cli/v0.4.0/tailapps_linux_amd64.tar.gz"
      sha256 "c17417b640f8656d0bbc8b2c4d46102d4492ed9dcd8423009abc067b29fd9f2e"
    end
  end

  def install
    bin.install "tailapps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tailapps version")
  end
end
