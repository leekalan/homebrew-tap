class SpikeSpy < Formula
  desc "Tool for analyzing CPU usage spikes"
  homepage "https://github.com/leekalan/spike-spy"
  url "https://github.com/leekalan/spike-spy/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "cb56c152a62ad8cc6cb2678a464f6ed82e9d45f4b666faf3d6adea662876c160"
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