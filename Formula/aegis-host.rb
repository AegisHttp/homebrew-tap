class AegisHost < Formula
  desc "Aegis Http Native Messaging host for GPG bridging"
  homepage "https://github.com/AegisHttp/native-host-rust"
  url "https://github.com/AegisHttp/native-host-rust/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "dd6ed594615ed95b1077051817010d6bdac31c7aadd9aeb7906b334d86dfb1ef"

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
