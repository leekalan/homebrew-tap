class SpikeSpy < Formula
  desc "Tool for analyzing CPU usage spikes"
  homepage "https://github.com/leekalan/spike-spy"
  url "https://github.com/leekalan/spike-spy/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "4133c3e2f5708354b92d1a0ea14ea310a49eaacd859155441b0040ffc18f02f6"
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