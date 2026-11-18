# Written by scripts/publish.sh in the tailapps CLI repo on each release. Edits here are overwritten.
class Tailapps < Formula
  desc "Send to and listen on your TailApps apps from any machine"
  homepage "https://tailapps.com"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://dl.tailapps.com/cli/v0.3.0/tailapps_darwin_arm64.tar.gz"
      sha256 "21fd6249c22b8a8c6850e2573b4bc78aa577d55666f166039acde1b57cec4e9e"
    end
    on_intel do
      url "https://dl.tailapps.com/cli/v0.3.0/tailapps_darwin_amd64.tar.gz"
      sha256 "fae45bf6d5c3d86e13f09221ddef7e9c0ae59625d6959412ad8a601eec50677d"
    end
  end

  on_linux do
    on_arm do
      url "https://dl.tailapps.com/cli/v0.3.0/tailapps_linux_arm64.tar.gz"
      sha256 "8d9b77d7b12c505b803d1fb206304e81c54c9f674c705b0a1fb02920a1d2ba4a"
    end
    on_intel do
      url "https://dl.tailapps.com/cli/v0.3.0/tailapps_linux_amd64.tar.gz"
      sha256 "cd6b4243e76adde39c3af89d94aa2c27660d3c60be5e9976b02e4cd2e835cd63"
    end
  end

  def install
    bin.install "tailapps"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tailapps version")
  end
end
