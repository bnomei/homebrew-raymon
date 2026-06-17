class Raymon < Formula
  desc "Stateful MCP server and TUI for Ray-style logs"
  homepage "https://github.com/bnomei/raymon"
  version "0.6.0"
  license "MIT"

  checksums = {
    aarch64_apple_darwin: "af0a339afc65785d7da5bf5c736224089cb619c63386126d3418f4d9a462ab2e",
    x86_64_apple_darwin: "3ed684b1bb913a875d803cdea6110f7355334d752bf4e89f09decf5bb9c50dee",
    aarch64_unknown_linux_musl: "7838aeef3a08dae2d1c94475beaa75487f4bbd66e9e9b2e48bd0daf17538dd30",
    x86_64_unknown_linux_musl: "4b75baee3c784baba0b906c19bf9bb875f23810c3e13548bfa039c988235334f",
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
