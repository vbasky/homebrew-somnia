class Somnia < Formula
  desc "Type-safe SurrealDB ORM for Rust — diesel-style migration CLI"
  homepage "https://github.com/vbasky/somnia"
  url "https://github.com/vbasky/somnia/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "f121e815fc1ed452d2bc6ef716dfcb56e84416c64b64991fb3f8d8c8cd1e1fc7"
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
