require 'rails_helper'

RSpec.describe Post, type: :model do
  # Postモデルをテスト対象にすることを示している。

  # pending "add some examples to (or delete) #{__FILE__}" この行は削除

  context 'データが正しく保存される' do
    # データが正しく保存できることに関するテストであることを示している。

    before do
      @post = Post.new
      @post.title = "Hello WebCamp"
      @post.content = "今日も晴れです"
      @post.save
    end
    # テスト用のデータを生成している。

    it "全て入力してあるので保存される" do
      expect(@post).to be_valid
      # saveされているデータが入っている変数を示している。
      # be_valid：@postに正しくデータが保存されているかを確認する。
    end
  end
end
