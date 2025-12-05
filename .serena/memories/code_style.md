# Code Style and Conventions

## Language Standard
- GHC2021: 最新の言語標準を使用

## Compiler Flags
- `-Wall`: 全警告を有効化

## Testing Framework
- Hspec: BDD スタイルのテストフレームワーク

## Module Structure
- `MyLib`: 各テーマのライブラリモジュール名 (デフォルト)
- `Main`: 実行可能ファイルとテストのエントリポイント

## Naming Conventions
- Cabal package names: kebab-case (`palindrome-checker`)
- Directories: kebab-case (`palindrome-checker/`)
- Module names: PascalCase (`MyLib`)

## Dependencies
- `base ^>=4.17.2.1`: 基本ライブラリ
- `hspec`: テスト依存関係
