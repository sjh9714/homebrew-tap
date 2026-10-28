class Journal < Formula
  desc "Markdown-file journal: CLI and MCP server for the Journal app"
  homepage "https://github.com/sjh9714/journal"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sjh9714/journal/releases/download/v0.1.0/journal-aarch64-apple-darwin"
      sha256 "ea180b6d2a18eac112a0c4d53e619bcb25ffdfe544cbbe1159935cbb913dd790"
    end
    on_intel do
      url "https://github.com/sjh9714/journal/releases/download/v0.1.0/journal-x86_64-apple-darwin"
      sha256 "d11dd28a0f2866f1d3f52ce7cb02231ea1ca5b36282b2b413f5fa1525eb86f64"
    end
  end

  on_linux do
    url "https://github.com/sjh9714/journal/releases/download/v0.1.0/journal-x86_64-unknown-linux-gnu"
    sha256 "8d072b72d816335a9ca3872a31fee981fcdf7aba261ad36844628012e0692391"
  end

  def install
    binary = Dir["journal-*"].first
    bin.install binary => "journal"
  end

  test do
    system "#{bin}/journal", "--version"
  end
end
