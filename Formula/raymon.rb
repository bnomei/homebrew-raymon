class Raymon < Formula
  desc "Stateful MCP server and TUI for Ray-style logs"
  homepage "https://github.com/bnomei/raymon"
  version "0.2.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "78789eb5ed20537c94fcbcf48ea33202ccb18c571b0e20382ab62cb2517160e8",
    x86_64_apple_darwin: "41b9b4d1f6c2a5a28169e92198b41d0b0a2fdc8e29b10217680c789a1a18a2ac",
    aarch64_unknown_linux_musl: "3afaa85c1777e787ffbb12d9293b3da8606f95f0b7848a15b3d8f1b4178e0e39",
    x86_64_unknown_linux_musl: "6dc8539a27b7a456f63a18d2e18c49f1eac9113d1de9cf6fa847eb847ed55981",
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
