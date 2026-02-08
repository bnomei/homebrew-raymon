class Raymon < Formula
  desc "Raymon"
  homepage "https://github.com/bnomei/raymon"
  version "0.1.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "d0abba0d9cbc71ed6953b37148671930e20fe4926bdf9e5b7dde23ec82e5a4bd",
    x86_64_apple_darwin: "83930c53106e1c147cc496ae38c8c119cae6c956633692d7aae9c8051b537a1a",
    aarch64_unknown_linux_musl: "d50623db36f9e9ab7f8f663c41723479e505473943c1383e6aa2c6c4a5584ba8",
    x86_64_unknown_linux_musl: "3220f738924835bed568869b9e8716d3fbf57419c3a7e4e48c734bf53aefb5cf",
  }

  on_macos do
    on_arm do
      url "https://github.com/bnomei/raymon/releases/download/v#{version}/raymon-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 checksums[:aarch64_apple_darwin]
    end
    on_intel do
      url "https://github.com/bnomei/raymon/releases/download/v#{version}/raymon-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 checksums[:x86_64_apple_darwin]
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bnomei/raymon/releases/download/v#{version}/raymon-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 checksums[:aarch64_unknown_linux_musl]
    end
    on_intel do
      url "https://github.com/bnomei/raymon/releases/download/v#{version}/raymon-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 checksums[:x86_64_unknown_linux_musl]
    end
  end

  def install
    bin.install "raymon"
  end

  test do
    assert_match "raymon", shell_output("#{bin}/raymon --help")
  end
end
