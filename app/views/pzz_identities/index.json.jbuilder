json.array!(@pzz_identities) do |pzz_identity|
  json.extract! pzz_identity, :id, :pzz_user_id, :identity_realname, :identity_gender, :identity_card_no, :identity_card_image, :identity_dl_no, :identity_dl_type, :identity_dl_image, :identity_dl_starttime, :identity_dl_status, :identity_status
  json.url pzz_identity_url(pzz_identity, format: :json)
end
