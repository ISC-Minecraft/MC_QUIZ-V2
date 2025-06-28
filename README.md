# クイズ大会データパックV2
## 作業する際はmainブランチへ直接コミットせずブランチを切ること
## 問題の追加はDLして各自ですること、ここに直接追加しないで
## 辞書の追加手順
### 1.空の辞書を追加する
`data/quizv2/function/library/0.mcfunction`をコピーし、好きな名前を付ける
### 2.問題を追加する
追加の仕方は後述する問題の追加手順を参照
## 問題の追加手順
### 1.問題を追加したい辞書ファイルを開く
`data/quizv2/function/library`内にあります
### 2.問題の内容を入力する
一番下の行に以下のコマンドを追加して、`< >`の部分を書き換える

```data modify storage quiz: game append value {text:"<問題文>",ans:<正解(1~4で指定)>,choices:["<選択肢1>","<選択肢2>","<選択肢3>","<選択肢4>"]}```

## コマンド一覧
### function
```function quizv2:frame/standby with storage quiz:world```

ゲームを開始します

```function quizv2:setting/library {lib:<辞書名>}```

使用する辞書を切り替えます

```function quizv2:setting/modeswitch```

実行者の観戦と参加を切り替えます

看板等からだれでも実行できるようにすると良い

```function quizv2:setting/questions/up```

```function quizv2:setting/questions/down```

問題の出題数を1～問題数の間で上下させます

```function quizv2:setting/pos/player {x:<X座標>,y:<Y座標>,z:<Z座標>}```

```function quizv2:setting/pos/spectator {x:<X座標>,y:<Y座標>,z:<Z座標>}```

```function quizv2:setting/pos/wait {x:<X座標>,y:<Y座標>,z:<Z座標>}```

```function quizv2:setting/pos/lobby {x:<X座標>,y:<Y座標>,z:<Z座標>}```

上から順番に

ゲーム中の参加者のtp先、観戦者のtp先、開始前5秒の待機時間のtp先、ゲーム終了時のtp先

を設定します

```function quizv2:setting/pos/floor {x1:<X座標1>,y1:<Y座標1>,z1:<Z座標1>,x2:<X座標2>,y2:<Y座標2>,z2:<Z座標2>}```

```function quizv2:setting/pos/clone {x1:<X座標1>,y1:<Y座標1>,z1:<Z座標1>,x2:<X座標2>,y2:<Y座標2>,z2:<Z座標2>}```

答え合わせ時に抜ける床の範囲と床を復活させる時の複製元を設定します

床の復活は`clone cloneのx1 y1 z1 x2 y2 z2 floorのx1 y1 z1`で行われます

cloneコマンドの仕様は調べてください

### その他
```scoreboard players remove $remain questions <数値>```

指定した数だけ残りの問題数を減らします

ゲーム中に問題数を減らさないといけなくなったときに使ってください

```data get storage quiz: lib```

選択されている辞書を確認します
