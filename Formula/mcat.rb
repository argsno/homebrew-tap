# 由 mcat 仓库的 release workflow 自动生成，不要手动改。
class Mcat < Formula
  desc "A cat that renders Markdown in the terminal"
  homepage "https://github.com/argsno/mcat"
  license "MIT"
  version "0.6.0"

  # 二进制分发，按架构/系统给四个象限各一份 tar.gz（都由 release workflow 构建）
  on_arm do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.6.0/mcat-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "fc6cd307a9d847978a84929852b1f495d5624968ffb517df34e73b348fd34064"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.6.0/mcat-v0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6c6226ccac55b0453edaac76278b3e7448f2cb3d02277ec3c00a52fc31bf553"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.6.0/mcat-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "7293b13aed52016638331bd7c3bcd2743059db67cbf38ab9eea8353f7aa4c766"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.6.0/mcat-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64a0fd1a6c298486f35367b8d0c7f7c1231b62149647922380b1ef5e7550f58f"
    end
  end

  def install
    bin.install "mcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcat --version")
  end
end
