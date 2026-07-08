class AegisHost < Formula
  desc "Aegis Http Native Messaging host for GPG bridging"
  homepage "https://github.com/AegisHttp/native-host-rust"
  url "https://github.com/AegisHttp/native-host-rust/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "9f2e652e0f29bec60bb34d11e51abd9b5fa13c90e58f15ba51820100a03ced10"

  depends_on "rust" => :build
  depends_on "gnupg"

  def install
    system "cargo", "install", *std_cargo_args
  end

  def post_install
    system "#{bin}/aegis-host", "--install"
  end

  def caveats
    <<~EOS
      The native messaging host has been automatically registered with your browsers.
      If you need to re-register it at any time, simply run:
        aegis-host --install
    EOS
  end

  test do
    system "#{bin}/aegis-host", "--version"
  end
end
