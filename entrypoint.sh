curl --silent "$URL" | pandoc --from html --to markdown_strict -o /var/tmp/output.md

