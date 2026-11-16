# 由 mcat 仓库的 release workflow 自动生成，不要手动改。
class Mcat < Formula
  desc "A cat that renders Markdown in the terminal"
  homepage "https://github.com/argsno/mcat"
  license "MIT"
  version "0.4.0"

  # 二进制分发，按架构/系统给四个象限各一份 tar.gz（都由 release workflow 构建）
  on_arm do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.4.0/mcat-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "634564fbae15aad9aaabf587e40d62f3d3238fe31ddb3f4726e93c83bcf921d7"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.4.0/mcat-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30e857fc2d7b67a3b933baa2243d1f38c74b435bd95328b13ab310b50d7f37e3"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.4.0/mcat-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "58a3a46ee76d9e8ff6fbd8e5205c954d7786850a35ce2d23ac14059ee538564e"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.4.0/mcat-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29c58402825f2c682d746249ea91b1994290a70cd0f5d9c7eadbf2c7fc7bfbd7"
    end
  end

  def install
    bin.install "mcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcat --version")
  end
end
