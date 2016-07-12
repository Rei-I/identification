# IDEC code:1
name =  ["6521C AC", "6522C DC"]
qr = ["ID\\6521C AC.LMS", "ID\\6522C DC.LMS"]

2.times do |i|
  ProductItem.create!(
    customer_id: 1,
    name: name[i],
    use_pokanon: true,
    qrcode: qr[i],
    use_qr: true
  )
end

# ミカサ商事 code:2
ProductItem.create!(
  customer_id: 2,
  name: "RTP-MP1",
  use_pokanon: false,
  qrcode: "MIS\\RTP-MP1.LMS",
  use_qr: true
)
  
# 日本コンラックス code:3
name =  ["VT-20 PW", "VT-20 SW", "VT-20 UI"]
qr = ["NC\\VT-20\\PSboard1.LMS", "NC\\VT-20\\SWboard.LMS", "NC\\VT-20\\UIboard1.LMS"]

ProductItem.create!(
  customer_id: 3,
  name: "VT-20 CON",
  use_pokanon: true,
  qrcode: nil,
  use_qr: false
)
  
3.times do |i|
  ProductItem.create!(
    customer_id: 3,
    name: name[i],
    use_pokanon: true,
    qrcode: qr[i],
    use_qr: true
  )
end

# 立花デバイス code:4
name =  ["IU331202", "IU331302", "SU486200", "SU486400", "SU486500",
         "SU492303", "SU518106", "SU532800", "SU534102", "SU581702",
         "SU581801", "SU582402", "SU582504", "SU582800", "SU600302",
         "SU600402", "SU600502", "SU601001", "SU645402", "SU645602",
         "SU645802", "SU645904", "SU646004", "SU646204", "SU646401",
         "SU647002", "SU647102"]
    
qr = ["RE\\IU331202.LMS", "RE\\IU331302.LMS", "RE\\SU486200.LMS",	 "RE\\SU486400.LMS", "RE\\SU486500.LMS",
      "RE\\SU492303.LMS", "RE\\SU518106.LMS", "RE\\SU532800.LMS", "RE\\SU534102.LMS", "RE\\SU581702.LMS",
      "RE\\SU581801.LMS", "RE\\SU582402.LMS", "RE\\SU582504.LMS", "RE\\SU582800.LMS", "RE\\SU600302.LMS",
      "RE\\SU600402.LMS", "RE\\SU600502.LMS", "RE\\SU601001.LMS", "RE\\SU645402.LMS", "RE\\SU645602.LMS",
      "RE\\SU645802.LMS", "RE\\SU645904.LMS", "RE\\SU646004.LMS", "RE\\SU646204.LMS", "RE\\SU646401.LMS",
      "RE\\SU647002.LMS", "RE\\SU647102.LMS"]

name.length.times do |i|
  ProductItem.create!(
    customer_id: 4,
    name: name[i],
    use_pokanon: false,
    qrcode: qr[i],
    use_qr: true
  )
end

# リズム時計 code:5
ProductItem.create!(
  customer_id: 5,
  name: "MDIO",
  use_pokanon: false,
  qrcode: "RH\\MDIO.LMS",
  use_qr: true
)

# 新光商事(松本) code:6
ProductItem.create!(
  customer_id: 6,
  name: "MK4H17527",
  use_pokanon: false,
  qrcode: "SSC\\MK4H17527.LMS",
  use_qr: true
)

# 立花エレテック code:7
name =  ["HR401B_MB", "HR401B_SW", "HR401K_SW", "HR401NK_MB",
         "HR404B_MB", "HR404K_MB", "HR405K_MB", "HR410_SW",
         "HR410K_MB"
]
qr = ["TAE\\HR401B_MB.LMS", "TAE\\HR401B_SW.LMS", "TAE\\HR401K_SW.LMS", "TAE\\HR401NK_MB.LMS",
      "TAE\\HR404B_MB.LMS", "TAE\\HR404K_MB.LMS", "TAE\\HR405K_MB.LMS", "TAE\\HR410_SW.LMS",
      "TAE\\HR410K_MB.LMS"
]
name.length.times do |i|
  ProductItem.create!(
    customer_id: 7,
    name: name[i],
    use_pokanon: false,
    qrcode: qr[i],
    use_qr: true
  )
end

# 豊田自動織機 code:8
name = ["AD000-1000", "AD000-1100", "AD000-1200", "AD000-1300"]  
qr = ["TICO\\AD000-1000.LMS", "TICO\\AD000-1100.LMS", "TICO\\AD000-1200.LMS", "TICO\\AD000-1300.LMS"]

name.length.times do |i|
  ProductItem.create!(
    customer_id: 8,
    name: name[i],
    use_pokanon: ture,
    qrcode: qr[i],
    use_qr: true
  )
end