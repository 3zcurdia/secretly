# frozen_string_literal: true

json.array! @comments do |comment|
  json.id comment.id
  json.author do
    json.id comment.user_id
    json.name comment.user_username
    json.avatar_url comment.user_avatar_url
  end
  json.content comment.content
  json.created_at comment.created_at.iso8601
  json.updated_at comment.updated_at.iso8601
end
