json.extract! fxsignal, :id, :body, :entry_point, :exit_point, :slug, :stop_loss, :sell_point1, :sell_point2, :tradetype, :odds, :status, :date, :pairs, :leverage, :call_type, :exchange, :stop_loss, :sub, :info, :archive_id, :created_at, :updated_at
json.url fxsignal_url(fxsignal, format: :json)
