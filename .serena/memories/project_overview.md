# Project Overview

## Purpose
Haskell 学習用リポジトリ。テーマごとに独立したアプリケーションを実装し、段階的に Haskell の理解を深める。

## Tech Stack
- Language: Haskell (GHC2021)
- Compiler: GHC 9.4.8
- Build Tool: Cabal 3.10.3.0
- Testing: Hspec

## Directory Structure
```
/
├── <theme-name>/          # テーマごとの独立アプリケーション
│   ├── app/              # 実行可能ファイル (Main.hs)
│   ├── src/              # ライブラリコード
│   ├── test/             # テストコード (Hspec)
│   ├── dist-newstyle/    # ビルド成果物 (gitignore)
│   └── <theme-name>.cabal
└── CLAUDE.md             # プロジェクト指示書
```

## Existing Themes
- `fizzbuzz/`: FizzBuzz 実装
- `palindrome-checker/`: 回文チェッカー

## Project Structure
各テーマは Cabal プロジェクトとして独立しており:
- library セクション: src/ 配下のコード
- executable セクション: app/Main.hs
- test-suite セクション: test/Main.hs (Hspec)
