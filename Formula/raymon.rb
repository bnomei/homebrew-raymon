class Raymon < Formula
  desc "Stateful MCP server and TUI for Ray-style logs"
  homepage "https://github.com/bnomei/raymon"
  version "0.4.1"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "963542b8550aaeff33752ff884886f0f776e2f4916efa3935f9f01d032dd0f2e",
    x86_64_apple_darwin: "0d2f15584214e136cae92890440609f3bad17db4bf0a4ff4e228d8ab5af8acab",
    aarch64_unknown_linux_musl: "e278c77df00a9b563512f2631697c829aa2c378b47840ca473596245176ab275",
    x86_64_unknown_linux_musl: "005f3118b6b89750a48aad53016daacf362a633ff6eedd5b72776908f8607ee0",
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
