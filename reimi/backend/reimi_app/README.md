# プロジェクト概要

Spring Boot で開発されているモバイルアプリのバックエンドプロジェクトです。
ドメイン駆動設計（DDD）をベースに Clean Architecture の考え方を採用し、`application / domain / infrastructure` 各層の責務を明確に分離した構成としています。

---

<br>

## プロジェクト作成時の設定

本プロジェクトでは **VScodeの拡張機能「Spring Initializr Java Support」** を利用して Spring Bootプロジェクトを作成しています。

### 1. 作成時の設定
- プロジェクト種別：Spring Boot
- ビルドツール：Maven
- Spring Boot バージョン：3.5.8
- Java バージョン：17
- パッケージング：Jar

### 2. 依存関係
- Spring Web
- Spring Data JPA
- Spring Security
- Spring Validation
- Thymeleaf
- PostgreSQL Driver
- Flyway
- Spring Boot DevTools
- Lombok
- Spring Boot Test
- Springdoc OpenAPI (Swagger UI)
- Firebase Admin SDK
- dotenv-java

<br>
<br>
<br>

---

## 環境構築手順

アプリを起動するために、以下の手順で環境構築を行ってください。

### 1. VSCode設定

以下の拡張機能をインストールしてください。

- Extension Pack for Java
- Spring Boot Extension Pack

### 2. 環境変数とアプリケーション（application.yml）の設定

* 環境変数は `secrets/`フォルダと`.env` ファイルで管理しています
* アプリケーション設定は`application.yml`ファイルで管理しています
* 設定に必要なファイルは **git 管理対象外** です

そのため、

1. 開発メンバーに連絡し、以下の設定フォルダ・ファイルを一式共有してもらう
   - `secrets/` フォルダ
   - `application.yml`ファイル（アプリ共通設定）
   - `application-dev.yml`ファイル（開発環境用）
   - `.env`ファイル

2. プロジェクトルートに `secrets/` フォルダと`.env`ファイルを、`/src/main/resources/`フォルダ配下に`application.yml`と`application-dev.yml`ファイルを追加する

上記対応を行ってください。

### 3. アプリの起動（開発環境）

本プロジェクトでは Docker Compose を利用して、
Java（Spring Boot）および PostgreSQL のコンテナを起動します。

以下のコマンドでビルド・起動できます。
```bash
docker compose up --build
```
※ 初回起動時は Docker イメージのビルドに時間がかかる場合があります。

また、以下のコマンドでコンテナを停止・削除できます。

```bash
docker compose down
```
<br>
<br>
<br>

---

## ディレクトリ構成

`com.reimi.reimi_app/` 配下は以下のような構成になっています（※ ファイル名は省略しています）。

```text
com.reimi.reimi_app
├── application
│   ├── command
│   ├── exception
│   ├── initializer
│   ├── service
│   └── usecase
│
├── config
│
├── domain
│   ├── model
│   ├── repository
│   └── shared
│
├── infrastructure
│   ├── image
│   ├── notification
│   ├── persistence
│   │   ├── entity
│   │   ├── mapper
│   │   └── repository
│   │
│   ├── service
│   ├── storage
│   └── web
│       ├── advice
│       ├── controller
│       ├── converter
│       ├── dto
│       └── openapi
│
├── security
└── ReimiAppApplication.java
```

---

## アーキテクチャ概要

* **application**: ユースケース層（アプリケーションサービス）
* **domain**: ドメイン層（ビジネスロジックの中核）
* **infrastructure**: インフラ層（DB / 外部サービス実装）
* **web**: Web/API層（Controller, DTO）
* **config**: Spring / 各種設定
* **security**: 認証・認可（Firebase）


責務を明確に分離することで、保守性・テスト容易性を高めています。


---

<br>
<br>
<br>

## 補足

### API ドキュメント（Springdoc OpenAPI）

本プロジェクトでは **Springdoc OpenAPI** を利用して、
API ドキュメントをコードベースで管理しています。

- Controller は `web/controller` 配下に実装
- API 仕様定義は `web/openapi` 配下に集約
- Swagger UI を通して API 一覧・リクエスト仕様を確認可能

#### Swagger UI へのアクセス（開発環境）

```text
http://localhost:8080/swagger-ui/index.html
```
#### OpenAPI（API仕様）

- 実行時に生成される OpenAPI 定義が正しいです。
- `docs/openapi/openapi.yaml` は
  **GitHub プレビュー用**のものなので、参考までにご覧ください。
```text
docs/
└── openapi/
    └── openapi.yaml
```

最新の API 定義は、アプリ起動後に以下から確認してください。

- OpenAPI 定義（JSON形式）

```text
http://localhost:8080/v3/api-docs
```

- OpenAPI 定義（YAML形式）

```text
http://localhost:8080/v3/api-docs.yaml
```
