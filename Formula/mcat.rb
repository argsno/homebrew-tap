# mcat 的 Homebrew formula 模板。
# release workflow（.github/workflows/release.yml）把 __*__ 占位符填成真实值后
# 推到 argsno/homebrew-tap 的 Formula/mcat.rb，不要直接用这份文件安装——
# 占位符不是真实的 tag 和校验和。
class Mcat < Formula
  desc "A cat that renders Markdown in the terminal"
  homepage "https://github.com/argsno/mcat"
  license "MIT"
  version "0.1.0"

  # 二进制分发，按架构/系统给四个象限各一份 tar.gz（都由 release workflow 构建）
  on_arm do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.1.0/mcat-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "12a376e5fe1677ba4cd3a80b393e550a20e4dbcef5ea0cac985c63ecc8c27632"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.1.0/mcat-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab946915147c35b2e989429f45f305ad4068279f8c7a550421752279ca4ae04b"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.1.0/mcat-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c7e04f02371ae8f3cf4366ee926534cca3246e3c519e9865940825971e45a7e9"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.1.0/mcat-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2704694e00b9bee929a703ab95de38475bf81033ffc038d8365ecdb4fcd763fb"
    end
  end

  def install
    bin.install "mcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcat --version")
  end
end
