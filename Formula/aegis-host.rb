class AegisHost < Formula
  desc "Aegis Http Native Messaging host for GPG bridging"
  homepage "https://github.com/AegisHttp/native-host-rust"
  url "https://github.com/AegisHttp/native-host-rust/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "dd6f9ba033142b2778a14813b4f0a7f789e1fe1a9162d6bbcff611be8b7785bd"

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
