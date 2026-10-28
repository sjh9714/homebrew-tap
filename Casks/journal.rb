cask "journal" do
  version "0.1.0"

  on_arm do
    url "https://github.com/sjh9714/journal/releases/download/v0.1.0/journal-aarch64-apple-darwin"
    sha256 "284ccae08d2c0c452652786fe9a9d032958e967168cf1dda35f512ccaec6409f"
    binary "journal-aarch64-apple-darwin", target: "journal"
  end
  on_intel do
    url "https://github.com/sjh9714/journal/releases/download/v0.1.0/journal-x86_64-apple-darwin"
    sha256 "fb2be525505df5111998e599702e74e6e7d0d63385dfef8b02186f92060b68a5"
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
