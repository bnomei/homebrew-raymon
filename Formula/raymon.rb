class Raymon < Formula
  desc "Stateful MCP server and TUI for Ray-style logs"
  homepage "https://github.com/bnomei/raymon"
  version "0.7.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "b17a05ac6cb162936b17d97ae4801c14a95d64d516d9339140e41cf4485d4c9a",
    x86_64_apple_darwin: "d972c5d0d736f8e23b52cd80755c6ce4d728c859cb610f987795e4a416dc72dd",
    aarch64_unknown_linux_musl: "fc8b0f5318da201fc6cef6f387e212511db64cf3764fd82c65f99e25cf80f3eb",
    x86_64_unknown_linux_musl: "bee12d3e2bf1b22237ac9f1babfa8e081b0448755fd03b40c512d02fdb3126b8",
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
