class SherlogCli < Formula
  desc "CLI for the Sherlog Server"
  homepage "https://github.com/EthDevOps/sherlog"
  url "https://github.com/EthDevOps/sherlog/releases/download/v0.0.7/sherlog-cli-bin.zip"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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


