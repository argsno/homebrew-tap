# 由 mcat 仓库的 release workflow 自动生成，不要手动改。
class Mcat < Formula
  desc "A cat that renders Markdown in the terminal"
  homepage "https://github.com/argsno/mcat"
  license "MIT"
  version "0.10.0"

  # 二进制分发，按架构/系统给四个象限各一份 tar.gz（都由 release workflow 构建）
  on_arm do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.10.0/mcat-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "8fb9f410e3445f65eca6cb9cbdd87cc7f4fd256dadf262031ebe25d2e3c4785c"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.10.0/mcat-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49f1c1d9f76956c0092cf00b1a340e09eeda0423918c0331f0e817aaac6fc463"
    end
  end
  on_intel do
    on_macos do
      url "https://github.com/argsno/mcat/releases/download/v0.10.0/mcat-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "4d864e2e60d5b1cb804366335a26a566e6570b878d97b8287b3d5b1091062522"
    end
    on_linux do
      url "https://github.com/argsno/mcat/releases/download/v0.10.0/mcat-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "434f9fe818685c47327a9236bdba57f2ef1c238afca08cfc1bc2b8e98b1a6231"
    end
  end

  def install
    bin.install "mcat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcat --version")
  end
end
