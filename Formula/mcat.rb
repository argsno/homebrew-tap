# 由 mcat 仓库的 release workflow 自动生成，不要手动改。
class Mcat < Formula
  desc "A cat that renders Markdown in the terminal"
  homepage "https://github.com/argsno/mcat"
  license "MIT"
  version "0.7.0"

  # 二进制分发，按架构/系统给四个象限各一份 tar.gz（都由 release workflow 构建）
  on_arm do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.7.0/mcat-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "d03f9497be98af5d93f70337e8a7a7243915ad5e19377eb7fb1b14fa9a712fc4"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.7.0/mcat-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c6179358caeec9d39bcaa49c3b2b6ed9ea722dec15d095ce96c8a26766e6c3e"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.7.0/mcat-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "a2ffade65fa3979680361f7abc57a9c8534904278dbff45207292495cb206214"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.7.0/mcat-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e92976133cf317b6910cd7bb36bbdfd35a15b6e2d5498e8efcbf13888a83db74"
    end
  end

  def install
    bin.install "mcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcat --version")
  end
end
