#!/bin/bash
# 本体 School_Stock の作業ツリーから PDF/ZIP をこのリポジトリへ同期して push する
set -e
cd "$(dirname "$0")"
rsync -a -f'- .git/' -f'+ */' -f'+ *.pdf' -f'+ *.PDF' -f'+ *.zip' -f'+ *.ZIP' -f'- *' --prune-empty-dirs ../School_Stock/ ./
git add -A
if git diff --cached --quiet; then echo "変更なし"; exit 0; fi
git commit -m "配布ファイル同期 $(date +%Y-%m-%d)"
git push
echo "push 完了。数分で https://a-tozak.github.io/School_Stock_files/ に反映されます"
