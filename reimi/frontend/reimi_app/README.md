# プロジェクト概要

本リポジトリは、Flutter で開発されているモバイルアプリのフロントエンドプロジェクトです。
Clean Architecture をベースに、`application / domain / data / presentation` の責務を分離した構成になっています。

---

<br>

## 環境構築手順

アプリを起動するために、以下の手順で環境構築を行ってください。

### 1. Flutter SDK の準備

本プロジェクトでは **fvm** を利用して Flutter SDK を管理しています。

* 使用している Flutter SDK バージョン: **3.38.0**

```bash
fvm install 3.38.0
fvm use 3.38.0
```

### 2. 環境変数（dart_defines）の設定

* 環境変数は `dart_defines/` フォルダで管理しています
* `dart_defines/` は **git 管理対象外** です

そのため、

1. 開発メンバーに連絡し、`dart_defines` フォルダ一式を共有してもらう
2. プロジェクトルートに `dart_defines/` フォルダを追加する

上記対応を行ってください。

### 3. アプリの起動（開発環境）

開発環境向けのアプリは、以下のコマンドでビルド・起動できます。

```bash
make run-dev
```
<br>
<br>
<br>

---

## ディレクトリ構成

`lib/` 配下は以下のような構成になっています（※ ファイル名は省略しています）。

```text
lib
├── app
├── application
│   └── usecases
├── core
│   ├── config
│   ├── di
│   ├── error
│   ├── extensions
│   ├── firebase
│   ├── i18n
│   ├── locale
│   ├── logger
│   ├── router
│   ├── services
│   ├── storage
│   ├── theme
│   └── utils
├── data
│   ├── datasources
│   ├── dtos
│   ├── http
│   ├── mapper
│   └── repositories
├── domain
│   ├── entities
│   ├── params
│   ├── read_models
│   ├── repositories
│   └── value_objects
├── firebase_options
├── gen
├── presentation
│   ├── app
│   ├── features
│   ├── shared
└── main.dart
```

---

## アーキテクチャ概要

* **presentation**: UI / State 管理（Notifiers, Pages, Widgets）
* **application**: ユースケース層（アプリケーションロジック）
* **domain**: エンティティ・列挙型・リポジトリインターフェース
* **data**: API / Firebase / Repository 実装・DTO / Mapper
* **core**: DI・共通処理・設定・ユーティリティ

責務を明確に分離することで、保守性・テスト容易性を高めています。


---

<br>
<br>
<br>

## 補足

* Firebase は **dev / prod** で設定を分けています
* コード生成（freezed / json_serializable / riverpod generator など）を利用しています

```bash
make generate
```

必要に応じて実行してください。

<br>

### 依存関係変更時の対応

パッケージの追加・更新などにより **依存関係を変更した場合** は、以下のコマンドを利用してください。

```bash
make setup
```

`make setup` では内部で以下が実行されます。

* `fvm flutter clean`
* `fvm flutter pub get`

環境差分によるビルドエラーを防ぐため、依存関係を変更した際は必ず実行するようにしてください。
