class Raymon < Formula
  desc "Stateful MCP server and TUI for Ray-style logs"
  homepage "https://github.com/bnomei/raymon"
  version "0.5.1"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "3086524e18dba7f10c6db83c0111d0ca8ec71fb97d478a1b03cec0f8bf43fd29",
    x86_64_apple_darwin: "db1fa2edbcbe19218ddef575a208c2d3e6d3bcf483a438678344c53aeea8856d",
    aarch64_unknown_linux_musl: "0456f9e8581e3f2f1e17bc748480c37239824055f0bf327aea2ab8809dd3715c",
    x86_64_unknown_linux_musl: "a62b8b4585812637fcbe6dc9734f89dcbbfff8e320f207ac590fa704b3af9dc5",
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
