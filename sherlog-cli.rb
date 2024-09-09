class sherlogcli < Formula
  desc "CLI for the Sherlog Server"
  homepage "https://github.com/EthDevOps/sherlog"
  url "https://github.com/EthDevOps/sherlog/releases/download/v0.0.4/sherlog-cli-bin.zip"
  sha256 "a34c4297fdf91e92879dc76af8add4819ce17d40a52a31cc9fa38a5e7041fda3"
  license "MIT"

  def install
    on_macos do
      on_arm do
        bin.install "publish/osx-arm64/sherlog-cli"
      end
      on_intel do
        bin.install "publish/osx-x64/sherlog-cli"
      end
    end
    on_linux do
      on_arm do
        bin.install "publish/linux-arm64/sherlog-cli"
      end
      on_intel do
        bin.install "publish/linux-x64/sherlog-cli"
      end
    end
  end

  test do
    system "#{bin}/sherlog-cli", "--version"
  end
end

