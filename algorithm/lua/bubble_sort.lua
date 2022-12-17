-- https://news.mynavi.jp/techplus/article/programinglanguageoftheworld-45/ --

local data = {5, 18, 3, 19, 9, 20, 15, 1, 12, 2}
function bubble_sort(arr)
  local arr_len = #arr
  for i = 1, arr_len do
    for j = 1, arr_len - i do
      if arr[j] > arr[j+1] then
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
end

bubble_sort(data)
print(table.concat(data, ', '))