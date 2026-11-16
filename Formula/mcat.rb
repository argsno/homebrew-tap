# 由 mcat 仓库的 release workflow 自动生成，不要手动改。
class Mcat < Formula
  desc "A cat that renders Markdown in the terminal"
  homepage "https://github.com/argsno/mcat"
  license "MIT"
  version "0.5.0"

  # 二进制分发，按架构/系统给四个象限各一份 tar.gz（都由 release workflow 构建）
  on_arm do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.5.0/mcat-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "a874a83ae6fb8fd968f9a616d967ed6ab2aafbc1143d22b1aee1b1c86e3282fa"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.5.0/mcat-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b082c2c9cee60bbbfe4d9d055ccc245aa520af1eff00a565741034c569c2fd84"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.5.0/mcat-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "f5e624cc3866c3aa88dbddb75a579ed9f98dc7fe5011067be28a427e9d76a767"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.5.0/mcat-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3aeec345a1341b33bfd94e8404ca8e0b1329cdd65199b899af7051e67e7c0b1b"
    end
  end

  def install
    bin.install "mcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcat --version")
  end
end
