require 'test_helper'

class PzzIdentitiesControllerTest < ActionController::TestCase
  setup do
    @pzz_identity = pzz_identities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pzz_identities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pzz_identity" do
    assert_difference('PzzIdentity.count') do
      post :create, pzz_identity: { identity_card_image: @pzz_identity.identity_card_image, identity_card_no: @pzz_identity.identity_card_no, identity_dl_image: @pzz_identity.identity_dl_image, identity_dl_no: @pzz_identity.identity_dl_no, identity_dl_starttime: @pzz_identity.identity_dl_starttime, identity_dl_status: @pzz_identity.identity_dl_status, identity_dl_type: @pzz_identity.identity_dl_type, identity_gender: @pzz_identity.identity_gender, identity_realname: @pzz_identity.identity_realname, identity_status: @pzz_identity.identity_status, user_id: @pzz_identity.user_id }
    end

    assert_redirected_to pzz_identity_path(assigns(:pzz_identity))
  end

  test "should show pzz_identity" do
    get :show, id: @pzz_identity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pzz_identity
    assert_response :success
  end

  test "should update pzz_identity" do
    patch :update, id: @pzz_identity, pzz_identity: { identity_card_image: @pzz_identity.identity_card_image, identity_card_no: @pzz_identity.identity_card_no, identity_dl_image: @pzz_identity.identity_dl_image, identity_dl_no: @pzz_identity.identity_dl_no, identity_dl_starttime: @pzz_identity.identity_dl_starttime, identity_dl_status: @pzz_identity.identity_dl_status, identity_dl_type: @pzz_identity.identity_dl_type, identity_gender: @pzz_identity.identity_gender, identity_realname: @pzz_identity.identity_realname, identity_status: @pzz_identity.identity_status, user_id: @pzz_identity.user_id }
    assert_redirected_to pzz_identity_path(assigns(:pzz_identity))
  end

  test "should destroy pzz_identity" do
    assert_difference('PzzIdentity.count', -1) do
      delete :destroy, id: @pzz_identity
    end

    assert_redirected_to pzz_identities_path
  end
end
