# Step7: ホットフィックスをprodブランチにマージする

## ⌨️ やること: GitHub Pagesを確認する

GitLabフローでは、各環境ブランチと各環境のデプロイを対応付けすることがあります。このコースでは、GitHub Pagesの`/nonprod`以下がnonprodブランチと対応し、`/prod`以下がprodブランチに対応するようにデプロイされます。

GitHub Pagesがデプロイされたことを確認します。
URLは`{{オーナー名}}.github.io/{{リポジトリ名}}`です。例えば、オーナー名が`kubota`、リポジトリ名が`skills-gitlab-workflow`の場合、GitHub PagesのURLは`https://kubota.github.io/skills-gitlab-workflow`となります。

（背景が更新されていない場合、一度タブを閉じて再度Pagesを開いてください。）

非本番環境で文字が緑色になり、背景が黒に戻ったことを確認できます。確認方法は以下です。

1. 非本番環境は __こちら__ をクリックして、背景が黒になっていることを確認します。
2. ブラウザの「戻る」をクリックします。
3. 本番環境は __こちら__ をクリックして、背景が __黒になっている__ ことを確認します。

## ⌨️ やること: nonprodブランチをprodブランチへマージする

1. prodをベースブランチ、nonprodブランチを比較ブランチとしてプルリクエストを作成します。
2. プルリクエストのボディは以下のように記述します。
```md
## Description:
- Fixed bug, set game background back to black
```
3. 変更内容を確認して __Create pull request__ をクリックします。
4. __Merge pull request__ をクリックします。
5. 約20秒待ってから、このページ（指示を受けているページ）を更新してください。GitHub Actionsは自動的に次のステップに更新されます。