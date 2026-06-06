class Somnia < Formula
  desc "Type-safe SurrealDB ORM for Rust — diesel-style migration CLI"
  homepage "https://github.com/vbasky/somnia"
  url "https://github.com/vbasky/somnia/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "e68bc88495a5762189049b6beef820abdd5de3a919635181d2c54167836c7549"
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
