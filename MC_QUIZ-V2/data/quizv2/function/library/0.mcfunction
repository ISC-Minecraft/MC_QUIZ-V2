##0(sample)
#デフォルトの出題数を設定
data modify storage quiz: default set value 3
#問題文を追加し、remainに自分の問題番号を追加
data modify storage quiz: game append value {text:"これはサンプルライブラリの問題0です。正解は3です",ans:3,choices:["問題0の1つ目の選択肢","問題0の2つ目の選択肢","問題0の3つ目の選択肢","問題0の4つ目の選択肢"]}
data modify storage quiz: game append value {text:"これはサンプルライブラリの問題1です。正解は4です",ans:4,choices:["問題0の1つ目の選択肢","問題0の2つ目の選択肢","問題0の3つ目の選択肢","問題0の4つ目の選択肢"]}
data modify storage quiz: game append value {text:"これはサンプルライブラリの問題2です。正解は1です",ans:1,choices:["問題0の1つ目の選択肢","問題0の2つ目の選択肢","問題0の3つ目の選択肢","問題0の4つ目の選択肢"]}
data modify storage quiz: game append value {text:"これはサンプルライブラリの問題3です。正解は2です",ans:2,choices:["問題0の1つ目の選択肢","問題0の2つ目の選択肢","問題0の3つ目の選択肢","問題0の4つ目の選択肢"]}
data modify storage quiz: game append value {text:"これはサンプルライブラリの問題4です。正解は3です",ans:3,choices:["問題0の1つ目の選択肢","問題0の2つ目の選択肢","問題0の3つ目の選択肢","問題0の4つ目の選択肢"]}
