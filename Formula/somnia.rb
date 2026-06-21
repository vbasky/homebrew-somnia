class Somnia < Formula
  desc "Type-safe SurrealDB ORM for Rust — diesel-style migration CLI"
  homepage "https://github.com/vbasky/somnia"
  url "https://github.com/vbasky/somnia/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "9eda8a8f5a37f3a34a2a91ab8fb1a2e86603a9591004ac0a711448e69947e8f8"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/somnia-cli")
  end

  test do
    assert_match version.to_s,
      shell_output("\#{bin}/somnia --version")
  end
end
