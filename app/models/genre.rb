class Genre < ActiveHash::Base
  self.data = [
      {id: 0, name: '--'},
      {id: 1, name: 'ロック'}, {id: 2, name: 'Jポップ'}, {id: 3, name: 'Kポップ'},
      {id: 4, name: 'ヒップホップ'}, {id: 5, name: 'ジャズ'}, {id: 6, name: 'ブルース'},
      {id: 7, name: 'ソウル'}, {id: 8, name: 'R&B'}, {id: 9, name: 'カントリー'},
      {id: 10, name: 'レゲエ'}, {id: 11, name: 'ダンスミュージック'}, {id: 12, name: 'テクノ'},
      {id: 13, name: 'パンクロック'}, {id: 14, name: 'ヘヴィーメタル'}, {id: 15, name: 'ラップ'},
      {id: 16, name: 'オペラ'}, {id: 17, name: 'ラテン'}, {id: 18, name: 'フォーク'},
      {id: 19, name: 'クラシック'}, {id: 20, name: 'オルタナティブ'}, {id: 21, name: 'ハウス'},
      {id: 22, name: 'シャンソン'}, {id: 23, name: 'ディスコ'}, {id: 24, name: 'ゴスペル'}
  ]
end