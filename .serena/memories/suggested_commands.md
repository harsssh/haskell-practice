# Suggested Commands

## Development Commands

### Building
```bash
cd <theme-name>/
cabal build
```

### Running
```bash
cd <theme-name>/
cabal run <theme-name>
```

### Testing
```bash
cd <theme-name>/
cabal test
```

### REPL
```bash
cd <theme-name>/
cabal repl
```

## System Commands (macOS/Darwin)
- `ls`: ファイル一覧
- `cd`: ディレクトリ移動
- `find`: ファイル検索
- `grep`: テキスト検索
- `git`: バージョン管理

## Project Initialization
新しいテーマを作成する場合:
```bash
mkdir <theme-name>
cd <theme-name>
cabal init --interactive
```
