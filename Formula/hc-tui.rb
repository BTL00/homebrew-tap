# Homebrew formula, published in https://github.com/BTL00/homebrew-tap (Formula/hc-tui.rb): brew install btl00/tap/hc-tui
class HcTui < Formula
  desc "Terminal UI for herdr-core: many coding agents in one terminal"
  homepage "https://github.com/BTL00/hc-tui"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.2/hc-tui-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "44e82108452a7c91f1b640d1a1edd83f18339b14dbca612ea7135674c76897be"
    end
    on_intel do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.2/hc-tui-v1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "d5f603d4b42fd1006aa879544e15783cedccce69957b9c831affa6519463a8ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.2/hc-tui-v1.0.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6248e2b886e8370926d63f7e4e936d9786f9a90cc1ecd11d37081adca33c522f"
    end
    on_intel do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.2/hc-tui-v1.0.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43cf5eb0d62274979a7808d99f3be6ee3dda0e096cb61e7b0258b6ee63374352"
    end
  end

  def install
    bin.install "hc-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hc-tui --version")
  end
end
