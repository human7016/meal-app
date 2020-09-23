class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: "カテゴリを選択できます" },
    { id: 2, name: "野菜のおかず" },
    { id: 3, name: "お肉のおかず" },
    { id: 4, name: "魚介のおかず" },
    { id: 5, name: "ご飯もの" },
    { id: 6, name: "パスタ、グラタン" },
    { id: 7, name: "スープ、汁物" },
    { id: 8, name: "お弁当" },
    { id: 9, name: "麺" },
    { id: 10, name: "サラダ" },
    { id: 11, name: "パン" }
  ]
end
