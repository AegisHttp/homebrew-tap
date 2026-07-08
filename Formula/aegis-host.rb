class AegisHost < Formula
  desc "Aegis Http Native Messaging host for GPG bridging"
  homepage "https://github.com/AegisHttp/native-host-rust"
  url "https://github.com/AegisHttp/native-host-rust/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER_SHA256"

  depends_on "rust" => :build
  depends_on "gnupg"

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      To register the native messaging host with your browsers, run:
        aegis-host --install
    EOS
  end

  test do
    system "#{bin}/aegis-host", "--version"
  end
end
