require 'rails_helper'

RSpec.describe "Posts", type: :request do
  # PostsControllerをテスト対象にすることを示している。

  describe '新規投稿ページ' do
    # 新規投稿ページの関するテストであることを示している。

    context '新規投稿ページが正しく表示される' do
      # 新規投稿ページの正しく表示されることに関するものをまとめる。

      before do
        get posts_new_path
      end
      # 今回は' get posts_new_path 'で新規投稿ページを表示する処理をitの前に行う。

      it 'リクエストは200　OKとなること' do
        expect(response.status).to eq 200
      end
      # response.status：この記述することでレスポンスステータスが受け取ることができる。
      # 表示成功した時のレスポンスステータスの' 200 'を記述している。

      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include('新規投稿')
      end
      # response.body：htmlのデータが入っている
      # include：()の中身が含まれているか検証している

    end
  end
end
