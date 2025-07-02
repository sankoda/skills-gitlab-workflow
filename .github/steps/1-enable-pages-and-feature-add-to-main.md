# ステップ 1: GitHub Pages を有効にする

# Step1: 機能ブランチをプッシュする

_GitLabフローにようこそ_

## GitLabフロー

[GitLabフロー](https://about.gitlab.com/ja-jp/topics/version-control/what-is-gitlab-flow/)はシンプルなワークフローの1つです。

![GitLab Flow](https://qiita-image-store.s3.amazonaws.com/0/185389/68b5a27b-e32b-d61f-6020-96de3ba1d335.png)

GitLabフローは柔軟なブランチ戦略が特徴です。環境毎のブランチ（prod,nonprod等）や、リリース準備用のブランチを使い分け、開発規模や目的に応じた運用が可能です。GitHub Flowよりも複雑ですが、より高度なリリース管理を実現します。

## ⌨️ やること: GitHub Pages を有効にする

新しいブラウザタブを開き、このタブの指示を読みながら、2 番目のタブの手順を実行してください。

1. リポジトリ名の下にある「設定」をクリックします。
2. 「コードと自動化」セクションの「Pages」をクリックします。
3. 「ソース」ドロップダウンメニューから「GitHub Actions」を選択します。
4. 「コードと自動化」セクションの「Environments」をクリックします。
5. 「github-pages」をクリックします。
6. 「Add deployment branch or tag rule」をクリックします。
7. Name patternに「nonprod」を入力し、「Add rule」をクリックします。
8. 「Add deployment branch or tag rule」をクリックします。
9. Name patternに「prod」を入力し、「Add rule」をクリックします。

## ⌨️ やること: base.cssを修正する

1. メインブランチから新しいブランチを作成し、`base.css`内のbody CSS宣言を以下の内容に変更します。これにより、ページの背景が黒になります。

```css
body {
    background-color: black;
}
```

2. baseブランチとしてmainブランチを選択し、新しいブランチを機能ブランチとしてプルリクエストをオープンします。
3. 変更内容を説明するためにプルリクエストテンプレートに記入します。
4. プルリクエストを作成をクリックします。

## ⌨️ やること: プルリクエストをマージする

1. __Merge pull request__ をクリックし、作成した機能ブランチを削除します。
2. 約20秒待ってから、このページ（指示を受けているページ）を更新してください。GitHub Actionsは自動的に次のステップに更新されます。