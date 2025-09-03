class SpikeSpy < Formula
  desc "Tool for analyzing CPU usage spikes"
  homepage "https://github.com/leekalan/spike-spy"
  url "https://github.com/leekalan/spike-spy/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "fbc1f9d54e98c924d6329e4072a6c9c48d2591ec37c66fa0523b0c9034bbade6"
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