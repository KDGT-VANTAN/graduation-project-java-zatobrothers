# プロジェクト概要

Flutter で開発されているモバイルアプリのフロントエンドプロジェクトです。
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
lib                               # アプリケーションのルートディレクトリ
├── app                           # MyAppウィジェット、初期設定など
├── application                   # アプリケーション層（ビジネス操作の調整役）
│   └── usecases                  # 各機能のユースケース（1操作＝1クラス）
├── core                          # アプリ横断の共通基盤（技術的・環境的関心ごと）
│   ├── config                    # Flavorや環境変数などのアプリ設定
│   ├── di                        # Riverpod等の依存性注入定義
│   ├── error                     # 共通例外クラス定義
│   ├── extensions                # Dart拡張メソッド
│   ├── firebase                  # Firebase初期化・ラッパー処理
│   ├── i18n                      # 国際化関連設定（翻訳キーなど）
│   ├── locale                    # ロケール管理（言語切替など）
│   ├── logger                    # LoggerやCrashlytics連携設定
│   ├── router                    # GoRouter等のルーティング定義
│   ├── services                  # アプリ全体で使うサービス層
│   ├── storage                   # ローカルストレージ（SharedPreferencesなど）
│   ├── theme                     # ThemeDataやデザインシステム定義
│   └── utils                     # 汎用ユーティリティ関数
├── data                          # データ層（外部通信・永続化・DTO変換など）
│   ├── datasources               # APIやDBなどのデータ取得実装
│   ├── dtos                      # API通信用DTO（JSONシリアライズ対象）
│   ├── http                      # DioクライアントやHTTP設定
│   ├── mapper                    # DTO ⇄ Entity 変換処理
│   └── repositories              # Repository実装（Domainの抽象を実装）
├── domain                        # ドメイン層（ビジネスルールの中心）
│   ├── entities                  # ドメインエンティティ（不変条件を持つモデル）
│   ├── params                    # UseCase入力用パラメータクラス
│   ├── read_models               # 表示専用の読み取りモデル（集約結果など）
│   ├── repositories              # Repository抽象インターフェース
│   └── value_objects             # 値オブジェクト（不変な概念）
├── firebase_options              # FlutterFire CLI生成のFirebase設定
├── gen                           # 自動生成ファイル（Assets）
├── presentation                  # UI層（状態管理・画面・Widget）
│   ├── app                       # アプリとして成立させるための横断的制御
│   ├── features                  # 機能単位のUI（画面・notifier・state）
│   ├── shared                    # 複数featureで共有するUIコンポーネント
└── main.dart                     # アプリ起動エントリーポイント（初期化・runApp）
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
