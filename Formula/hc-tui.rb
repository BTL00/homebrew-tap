class HcTui < Formula
  desc "Terminal UI for herdr-core: many coding agents in one terminal"
  homepage "https://github.com/BTL00/hc-tui"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.0/hc-tui-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "d56e7d83ad2f3ec4d7ec2b30a1efec70562cb0ac93bf7c7b90f52a7354bf49c4"
    end
    on_intel do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.0/hc-tui-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "0ea2b3a41d95f4dbd909e34f297f1d9be055c846d39debfb809e8c558af55f5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.0/hc-tui-v1.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "321306aa1ae6e43b90cef03d5bba0388625bf44e32a252b64d0684bf7c96a487"
    end
    on_intel do
      url "https://github.com/BTL00/hc-tui/releases/download/v1.0.0/hc-tui-v1.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79cd38bf7a274aae1a09dd181082fb5dc859ab0e33c7a9008d3c0f3d0e1ed487"
    end
  end

  def install
    bin.install "hc-tui"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hc-tui --version")
  end
end
