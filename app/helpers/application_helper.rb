module ApplicationHelper
  
  def qrcode_tag(text, options = {})
    
    ::RQRCode::QRCode.new(text).as_svg(options).html_safe
  end
  
  def document_title
    if @title.present?
      "#{@title} - 生産投入表管理"
    else
      "生産投入表管理"
    end
  end
end
