# 由 mcat 仓库的 release workflow 自动生成，不要手动改。
class Mcat < Formula
  desc "A cat that renders Markdown in the terminal"
  homepage "https://github.com/argsno/mcat"
  license "MIT"
  version "0.9.0"

  # 二进制分发，按架构/系统给四个象限各一份 tar.gz（都由 release workflow 构建）
  on_arm do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.9.0/mcat-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "fd53531d182f2414e9236a91b3179985c72bf82796c0d1112ae968ad2d5eebfb"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.9.0/mcat-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d42abab9df29629eea7e22dbdffc0f1ab8d1783016e9710ec3493ca6be81a31"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.9.0/mcat-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "fd516ee28a9fcb472b1a16fc8c6f77cee7c33038a96ef1730db5bf85693649af"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.9.0/mcat-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59d97dedd45f1912f0ea8286bd4c67332e4c0e072110a4ee0ee8c6757c834521"
    end
  end

  def install
    bin.install "mcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcat --version")
  end
end
