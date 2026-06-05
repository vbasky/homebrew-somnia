class Somnia < Formula
  desc "Type-safe SurrealDB ORM for Rust — diesel-style migration CLI"
  homepage "https://github.com/vbasky/somnia"
  url "https://github.com/vbasky/somnia/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "5f0e509c3019e0a1ebc941e950623b94a7fd0ec55e0a27509bc4132d46405000"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/somnia-cli")
  end

  test do
    assert_match version.to_s,
      shell_output("#{bin}/somnia --version")
  end
end
