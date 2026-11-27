# Homebrew formula, published in https://github.com/BTL00/homebrew-tap (Formula/hc-tui.rb): brew install btl00/tap/hc-tui
class HcTui < Formula
  desc "Terminal UI for herdr-core: many coding agents in one terminal"
  homepage "https://github.com/BTL00/hc-tui"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.3/hc-tui-v1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "f3d8d5b622229cc4817ce44dd9fe3db31a0b41d9fa0236b42a9e5283047ee13c"
    end
    on_intel do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.3/hc-tui-v1.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "bd4678ae1ba8cf654c49a01be68fc12d9914f23fca78c7b14c0f40c9585ad594"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.3/hc-tui-v1.0.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa4603b7e1a27694b79eead5955a5e8058e511c0d6d7a2f0f99d139c396f89dc"
    end
    on_intel do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.3/hc-tui-v1.0.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "744799b4e833080d0d80dc5d286e590174160c913ba40a0bd4be4f06bb91fa93"
    end
  end

  def install
    bin.install "hc-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hc-tui --version")
  end
end
