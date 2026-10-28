cask "journal" do
  version "0.1.0"

  on_arm do
    url "https://github.com/sjh9714/journal/releases/download/v0.1.0/journal-aarch64-apple-darwin"
    sha256 "ea180b6d2a18eac112a0c4d53e619bcb25ffdfe544cbbe1159935cbb913dd790"
    binary "journal-aarch64-apple-darwin", target: "journal"
  end
  on_intel do
    url "https://github.com/sjh9714/journal/releases/download/v0.1.0/journal-x86_64-apple-darwin"
    sha256 "d11dd28a0f2866f1d3f52ce7cb02231ea1ca5b36282b2b413f5fa1525eb86f64"
    binary "journal-x86_64-apple-darwin", target: "journal"
  end

  name "Journal CLI"
  desc "Markdown-file journal: CLI and MCP server for the Journal app"
  homepage "https://github.com/sjh9714/journal"

  livecheck do
    url :url
    strategy :github_latest
  end
end
