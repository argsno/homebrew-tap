# 由 mcat 仓库的 release workflow 自动生成，不要手动改。
class Mcat < Formula
  desc "A cat that renders Markdown in the terminal"
  homepage "https://github.com/argsno/mcat"
  license "MIT"
  version "0.3.0"

  # 二进制分发，按架构/系统给四个象限各一份 tar.gz（都由 release workflow 构建）
  on_arm do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.3.0/mcat-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "049ef2ac9a9314e80bf4eb88667d0835a6ffce53b63503a467d072883e66761d"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.3.0/mcat-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1ef266dcf1f161456ada405bec6f35ee4f4335c4752de0bd3afe5e600dc34113"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.3.0/mcat-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d3ff84812e04b2d0239c73f3a47a2ab9443f2afdd8b765b5994a71614349c312"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.3.0/mcat-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "32ae5519ea12a23025bdb28e4d0a1a6bd044953aa86ddb6e3138894c231aa99f"
    end
  end

  def install
    bin.install "mcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcat --version")
  end
end
