# 由 mcat 仓库的 release workflow 自动生成，不要手动改。
class Mcat < Formula
  desc "A cat that renders Markdown in the terminal"
  homepage "https://github.com/argsno/mcat"
  license "MIT"
  version "0.8.0"

  # 二进制分发，按架构/系统给四个象限各一份 tar.gz（都由 release workflow 构建）
  on_arm do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.8.0/mcat-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "7519394131d1ac5e58b045a2cd1afaad4a3349f6ef0a78357f0372e42cde516a"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.8.0/mcat-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47ca5b212aa887d58c5e16d0d051aa9b79e7198d2699071c33e5561ac28dd974"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.8.0/mcat-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "671b309b586690981c0d249476c01abd8c75aa16ea37258124eacc06a8c4fcb6"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.8.0/mcat-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "562ef3973243b93ef2eccaeacedad7a5aeff9b4039b98a325aaba9624a3dff9d"
    end
  end

  def install
    bin.install "mcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcat --version")
  end
end
