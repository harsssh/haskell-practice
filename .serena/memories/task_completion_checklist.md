# Task Completion Checklist

## When a Task is Completed

このプロジェクトは学習目的のため、タスク完了時の自動処理は最小限にする。

### Required Steps
1. コードが正しくビルドできることを確認
   ```bash
   cd <theme-name>/
   cabal build
   ```

2. テストが通ることを確認
   ```bash
   cd <theme-name>/
   cabal test
   ```

### Optional Steps (User Discretion)
- コミットメッセージの作成 (ユーザーが依頼した場合のみ)
- コードレビューの提供 (ユーザーが依頼した場合のみ)

## Notes
- Formatter や Linter は設定されていない (学習目的のため)
- Claude Code の署名をコミットメッセージに付けない (CLAUDE.md 指示)
