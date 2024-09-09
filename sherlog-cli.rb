class SherlogCli < Formula
  desc "CLI for the Sherlog Server"
  homepage "https://github.com/EthDevOps/sherlog"
  url "https://github.com/EthDevOps/sherlog/releases/download/v0.0.6/sherlog-cli-bin.zip"
  sha256 "1aace702d94dd182836e6d318923d3b29595df1d082c4c2d047bf7cb57d6e0bb"
  license "MIT"

  def install
    on_macos do
      on_arm do
        bin.install "osx-arm64/sherlog-cli"
      end
      on_intel do
        bin.install "osx-x64/sherlog-cli"
      end
    end
    on_linux do
      on_arm do
        bin.install "linux-arm64/sherlog-cli"
      end
      on_intel do
        bin.install "linux-x64/sherlog-cli"
      end
    end
  end
  def post_install
    system "codesign", "--sign", "-", bin/"sherlog-cli"
  end
end


