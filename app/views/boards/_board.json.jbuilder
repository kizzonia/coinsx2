json.extract! board, :id, :title, :name, :body, :boardimg, :slug, :created_at, :updated_at
json.url board_url(board, format: :json)
