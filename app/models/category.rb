class Category < ActiveHash::Base
  self.data = [
    {id: 0, name: '選択してください'},
    {id: 1, name: '赤'}, {id: 2, name: '白'}, {id: 3, name: 'ロゼ'},
    {id: 4, name: 'スパークリング'}, {id: 5, name: 'デザート'},
  ]
end