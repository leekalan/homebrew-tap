class SpikeSpy < Formula
  desc "Tool for analyzing CPU usage spikes"
  homepage "https://github.com/leekalan/spike-spy"
  url "https://github.com/leekalan/spike-spy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f98427c6201726fbaf2330415740f481bc470938aa1d79ad903a476c3034a33b"
  license "MIT"

  head "https://github.com/leekalan/spike-spy.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/spike-spy", "--version"
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end