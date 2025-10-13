require "application_system_test_case"

class SiteLayoutsTest < ApplicationSystemTestCase
  setup do
    @user = users(:one) # users.yml に書かれている :one というユーザー
  end

  test "testできる" do
    assert true
  end

  test "ログインしていない時、ヘッダーにログインと新規登録リンクが表示される" do
    visit root_url # トップページにアクセス

    # "sign up"というテキストを持つ<a>タグがあることを確認
    assert_selector "a", text: "sign up"
    assert_selector "a", text: "sign in"
    # # "ログアウト"というテキストを持つ<a>タグがないことを確認
    assert_no_selector "a", text: "sign out"
  end

  # test "ログインしている時、ヘッダーにログアウトリンクが表示される" do
  #   sign_in @user # Deviseヘルパーを使って、テスト内でログインさせます

  #   visit root_url # トップページにアクセス

  #   # "ログアウト"というテキストを持つ<a>タグがあることを確認
  #   assert_selector "a", text: "sign out"
  #   assert_no_selector "a", text: "新規登録"
  #   assert_no_selector "a", text: "ログイン"

  #   # ログインしているユーザーのメールアドレスが表示されていることを確認
  #   assert_text @user.email
  # end
end
