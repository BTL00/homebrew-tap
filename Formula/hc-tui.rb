class HcTui < Formula
  desc "Terminal UI for herdr-core: many coding agents in one terminal"
  homepage "https://github.com/BTL00/hc-tui"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.1/hc-tui-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "f84495d8d3df7e4519abb4cf88ba5ade8d0fa36219b44bd4755f075af7e53d04"
    end
    on_intel do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.1/hc-tui-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "76eda8fa0e8806589c0c148052e9709fb35ef56396048ba6953977e1d00e6c01"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.1/hc-tui-v1.0.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "394e673f9405f41c08a2fc985d063322c1d37c1f09efa8e4d683f7745aa76f1c"
    end
    on_intel do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.1/hc-tui-v1.0.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b825f13544308e04cc3ef318408ba9ad14bb4241b420bdc5c35bccff179855a"
    end
  end

  def install
    bin.install "hc-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hc-tui --version")
  end
end
