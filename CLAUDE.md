# Haskell 練習プロジェクト

Automatically use context7 for code generation and library documentation.

---

## 概要

Haskell の学習を目的としたリポジトリ。テーマごとにディレクトリを分け、独立したアプリケーションを実装する。

## Claude Code の役割

このプロジェクトでは学習サポートに徹する:

- Haskell の言語機能、構文、型システムの説明
- GHC, Cabal などのツールチェーンの使い方
- ライブラリの紹介と使用例
- エラーメッセージの解説
- コードレビューとフィードバック
- 練習テーマの提案

コードの実装は行わない。ヒントや方針の提示に留める。

## ツールチェーン

- GHC: コンパイラ
- Cabal: ビルドツール、パッケージマネージャ

## ディレクトリ構成

```
/
├── <theme-name>/     # テーマごとの独立アプリケーション
│   ├── app/
│   ├── src/
│   ├── test/
│   └── <theme-name>.cabal
└── ...
```
