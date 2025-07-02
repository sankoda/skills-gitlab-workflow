# GitLabフローでリポジトリを管理する

_GitLabフローを理解し、実践的なスキルを習得します。_

## ようこそ

このコースでは、GitLabフローを用いてリポジトリを効率的に管理する方法を学びます。
GitLabフローは、チームがよりスムーズに共同作業を行い、デプロイ可能なイテレーションを容易に実現するためのワークフローです。

GitHubの機能を活用し、開発プロセスを最適化します。（GitHubでもGitLabフローは利用可能です。）

- 対象者：開発者、DevOps エンジニア、IT 運用担当者、マネージャー、およびチーム。
- 学習内容：GitLabフローの概要と実践的な利用方法。
- 構築内容：GitLabフローに基づいたブランチ戦略、マージリクエストを実施します。
- 前提条件：ブランチ、コミット、プルリクエストについて学習する必要がある場合は、まず「GitHub 入門」を受講してください。
- 所要時間：このコースは 1 時間以内で完了します。

このコースでは、次のことを行います。

1.  ベータ版リリースを作成する (フィーチャーブランチからマージリクエストを作成)
2.  機能ブランチで開発を進める
3.  マージリクエストでコードレビューを行う
4.  メインブランチにマージする
5.  非本番環境ブランチにマージする
6.  ホットフィックスをコミットする
7.  ホットフィックスをメインブランチにマージする
8.  ホットフィックスを非本番環境ブランチにマージする
9.  本番環境ブランチにマージする

## このコースのはじめかた

<!-- For start course, run in JavaScript:
'https://github.com/new?' + new URLSearchParams({
  template_owner: 'kuboctopus',
  template_name: 'gitlab-workflow',
  owner: '@me',
  name: 'skills-gitlab-workflow',
  description: 'My clone repository',
  visibility: 'public',
}).toString()
-->

[![start-course](https://user-images.githubusercontent.com/1221423/235727646-4a590299-ffe5-480d-8cd5-8194ea184546.svg)](https://github.com/new?template_owner=kuboctopus&template_name=gitlab-workflow&owner=%40me&name=skills-gitlab-workflow&description=My+clone+repository&visibility=public)

1.  右クリックしてコースを開始し、新しいタブでリンクを開きます。
2.  新しいタブでは、ほとんどのプロンプトが自動的に入力されます。
    *   所有者には、個人アカウントまたはリポジトリをホストする組織を選択します。
    *   プライベートリポジトリはアクションの時間を使用するため、パブリックリポジトリを作成することをお勧めします。
    *   フォームの下部にあるリポジトリを作成ボタンをクリックします。
3.  新しいリポジトリが作成された後、約20秒待ってからページを更新します。新しいリポジトリのREADMEに記載されている手順に従ってください。
