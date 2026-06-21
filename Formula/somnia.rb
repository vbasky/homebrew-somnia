class Somnia < Formula
  desc "Type-safe SurrealDB ORM for Rust — diesel-style migration CLI"
  homepage "https://github.com/vbasky/somnia"
  url "https://github.com/vbasky/somnia/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "34a74085afe10d760dc9c7f759a1277170e926740fcf8a523463d4df5a152e03"
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
