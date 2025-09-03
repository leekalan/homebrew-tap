class SpikeSpy < Formula
  desc "Tool for analyzing CPU usage spikes"
  homepage "https://github.com/leekalan/spike-spy"
  url "https://github.com/leekalan/spike-spy/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "123e229cb9305b5d5b306a0d52de9969c489cbbf70f55a78ed8623e4183df007"
  license "MIT"

  head "https://github.com/leekalan/spike-spy.git", branch: "master"

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