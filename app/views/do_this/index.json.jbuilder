json.array!(@do_this) do |do_thi|
  json.extract! do_thi, :id, :title, :notes, :due, :done
  json.url do_thi_url(do_thi, format: :json)
end
