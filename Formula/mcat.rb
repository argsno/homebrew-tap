# 由 mcat 仓库的 release workflow 自动生成，不要手动改。
class Mcat < Formula
  desc "A cat that renders Markdown in the terminal"
  homepage "https://github.com/argsno/mcat"
  license "MIT"
  version "0.2.0"

  # 二进制分发，按架构/系统给四个象限各一份 tar.gz（都由 release workflow 构建）
  on_arm do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.2.0/mcat-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "8ff13eb23b7c0cabce51c389fac3aa08925300bb4230c22c897e658bf59b31c4"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.2.0/mcat-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15dc6ad4c07d0e115eb076abeaef9a2debab38d059a6704889e94599b85eaa55"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.2.0/mcat-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "0df6d4392ecf75664daa64d243b69b88e07ad4df22985d4078918260b00c8989"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.2.0/mcat-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68233ceeabfeaa79e7ee00afc47b19d505bb4bb347c07b8c5d45f363b24a1a92"
    end
  end

  def install
    bin.install "mcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcat --version")
  end
end
