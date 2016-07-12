require 'kconv'

result = "No,客先,機種,ポカノン有無,QRコード,QR有無,登録日時,更新日時\r"

@product_items.each do |e|
  e.attributes.each do |name, value|
    if name == 'customer_id'
      result << @customers.find(value).name + ','
    elsif name == 'created_at' || name == 'updated_at'
      result << value.strftime("%Y-%m-%d %H:%M:%S") + ','
    else
      result << value.to_s + ','
    end
  end
  result << "\r"
end

result.kconv(Kconv::SJIS, Kconv::UTF8)
#
#result = ''
#
#result << @product_items.attribute_names.join(',')
#result << "\r"
#
#@product_items.each do |e|
#  result << @customers.find(e.customer_id).name
#end
#
#@product_items.each do |e|
#  result << e.attributes.values.join(',')
#  result << "\r"
#end
result#.kconv(Kconv::SJIS, Kconv::UTF8)