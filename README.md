# School_Stock_files

School Stock（https://a-tozak.github.io/School_Stock/）の**配布ファイル置き場**（PDF・ZIP）。

- GitHub Pages の1リポジトリ1GB制限を回避するため、2026-08-10 に本体リポジトリから分離した
- パス構造は本体と同一。`https://a-tozak.github.io/School_Stock_files/prints/…` で配信される
- ページ（HTML）はすべて本体 `School_Stock` にある。ここには置かない
- 計測（Supabase）のキーは本体側 counter.js が `/School_Stock/…` に正規化して送るので、過去データと連続する
- 旧URL（`/School_Stock/…pdf`）は本体の 404.html が自動転送する

## 新しいプリントを追加するとき

1. これまでどおり本体 `School_Stock` の棚フォルダに PDF/ZIP を置く（本体側では .gitignore 済み＝コミットされない）
2. このリポジトリ直下で `./sync.sh` を実行 → 本体から PDF/ZIP だけがここに同期され、commit & push される

すべて自作コンテンツ（© School Stock）。
