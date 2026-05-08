class Raymon < Formula
  desc "Stateful MCP server and TUI for Ray-style logs"
  homepage "https://github.com/bnomei/raymon"
  version "0.3.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "93eae7df45037509bfa9be96e42bbf158b9a43e4f8e6cc4d6ae716d2d971e637",
    x86_64_apple_darwin: "2758f9b0c92ade950b2cc49888973aea3ba6f03dddcc362f9c208f66561c093f",
    aarch64_unknown_linux_musl: "bf1200e5ca2486d76ea5155277c926f9f6e23f3443e64b8859b6e982a33b3418",
    x86_64_unknown_linux_musl: "3ad7cfda13c4a5016f8e56b030ce9cf7eb4001cede584dadfd2b0113b017d475",
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
