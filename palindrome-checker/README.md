# palindrome-checker

## 概要

文字列が回文 (palindrome) であるかを判定するプログラム。前から読んでも後ろから読んでも同じになる文字列を検出する。大文字小文字やスペース、句読点を無視した判定にも対応し、Haskell の基本的なリスト操作と文字列処理を学習する。

## 実装する機能

- 基本的な回文判定 (文字列をそのまま逆順と比較)
- 正規化による柔軟な判定 (大文字小文字を無視、記号を除去)
- 複数の実装方法の比較 (`reverse` 関数、再帰、fold)
- コマンドライン引数またはインタラクティブ入力からの文字列受け取り
- 判定結果の表示

## 学習目標

このプロジェクトを通じて学ぶ Haskell の概念やテクニック:

- **リスト操作**: `reverse`, `filter`, `map`, `foldr`/`foldl` などの標準関数
- **再帰**: リストを先頭要素 (head) と残り (tail) に分解して処理するパターン
- **パターンマッチ**: 空リスト、単一要素、複数要素に対する場合分け
- **関数合成**: `(.)` 演算子を使った関数の組み合わせ
- **高階関数**: 関数を引数に取る関数 (map, filter など) の活用
- **型システム**: `String` が `[Char]` の別名であることの理解
- **純粋関数**: 副作用を持たない関数の設計
- **テスト**: Hspec によるユニットテストの作成

### 推奨ライブラリ

- **base**: 標準ライブラリ (Data.Char の `toLower`, `isAlphaNum` など)
- **hspec**: テスティングフレームワーク (BDD スタイルのテスト記述)
- **text**: 効率的な Unicode テキスト処理 (オプション、パフォーマンス改善時)

## 技術的なヒント

### 段階的な実装アプローチ

1. **最もシンプルな実装**: 文字列をそのまま逆順にして比較
   - `reverse` 関数を使う
   - `==` で元の文字列と比較

2. **正規化処理の追加**: 大文字小文字と記号を無視
   - `Data.Char` の `toLower` で小文字化
   - `isAlphaNum` で英数字のみをフィルタ
   - 関数合成で処理をまとめる

3. **別の実装方法**: 再帰による両端からの比較
   - 最初と最後の文字を比較
   - 再帰的に残りのリストを処理
   - ベースケース (空リスト、単一要素) を定義

4. **fold を使った実装**: リストの走査と状態管理
   - `foldr` または `foldl` で回文判定ロジックを表現
   - アキュムレータを使った状態の蓄積

### 注意点

- **空文字列の扱い**: 空文字列を回文とみなすか決める
- **Unicode 文字**: 基本的な ASCII 文字から始め、必要に応じて Unicode 対応を検討
- **パフォーマンス**: 長い文字列では `String` ([Char]) より `Text` 型が効率的
- **エッジケース**: 単一文字、記号のみの文字列、空白のみの文字列

### テストの書き方

Hspec を使った BDD スタイルのテスト例:

```
describe "palindrome checker" $ do
  it "returns True for simple palindromes" $ do
    -- テストケースを記述

  it "ignores case differences" $ do
    -- テストケースを記述

  it "ignores spaces and punctuation" $ do
    -- テストケースを記述
```

各機能ごとにテストを書き、実装の正しさを確認しながら進める。

## 参考資料

- [Haskell Base Library - Data.Char](https://hackage.haskell.org/package/base/docs/Data-Char.html)
- [Haskell Base Library - Data.List](https://hackage.haskell.org/package/base/docs/Data-List.html)
- [Hspec Documentation](https://hspec.github.io/)
- [Learn You a Haskell - Recursion](http://learnyouahaskell.com/recursion)
