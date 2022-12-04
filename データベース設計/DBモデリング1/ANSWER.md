## 課題１

ER 図を dbdiagram で作成

https://dbdiagram.io/d/6374d362c9abfc611173199c

### 物理モデルと論理モデルの違い

参考 https://zenn.dev/umi_mori/books/331c0c9ef9e5f0/viewer/110b8e

- 論理モデル

  - 多対多の分解
  - キーの整理
  - 正規化

- 物理モデル

  - 物理名の決定
  - 型・制約の決定
  - インデックスの決定

## 課題 2

シャリの大小...int で対応

## 課題 3

税率の変更があった場合
複数店舗があった場合
論理削除
持ち帰れない商品と持ち変えられる商品を分けて表示したい場合
顧客がネットで注文できるようにする場合
注文日時と受け渡し日時
注文の変更
キャンセルフラグ

## 課題 4

https://qiita.com/TAMIYAN/items/ed9ec892d91e5af962c6
を参考に docker で mysql を立ち上げてデータをターミナル上で入力した

お客さんが会計をする際の最終的な支払金額を計算する

```
select o.id, sum(m.price*om.quantity) as "total_price"  from orders as o
 inner join order_menus as om on o.id=om.order_id inner join menus as m on m.id=om.menu_id group by o.id;
```
