= Giới thiệu Protocol
== HyperText Tràner Protocol
HyperText Transfer Protocol (HTTP) là một giao thức ở tầng ứng dụng trong mô hình OSI để gửi và nhận tài liệu, hình ảnh, văn bản như HTML document. Về cơ bản, giao thức HTTP xây dựng
trên cơ chế request-response trong mô hình client-server. Trong mô hình này, client có thể là một process thuộc máy tính này, server có thể là process thuộc máy tính khác, hai process thuộc hai phần cứng khác nhau khi muốn giao tiếp với nhau thì sẽ thông qua HTTP để giao tiếp. Ai là người request thì đó là client, người nhận request để response sẽ là server.
#figure(caption: [8 giao thức mạng máy tính phổ biến (Nguồn Bytebytego)],
            image("../../components/assets/8protocol.gif", width: 80%, height: 60%)
)

== Transmission Control Protocol
Transmission Control Protocol (TCP) là một trong các giao thức cốt lõi của bộ giao thức TCP/IP. Nhờ có TCP, các ứng dụng trên các host được nối mạng có thể tạo các kết nối với nhau, mà qua đó chúng có thể trao đổi dữ liệu hoặc các gói tin. Giao thức này đảm bảo chuyển giao dữ liệu tới nơi nhận một cách đáng tin cậy và đúng thứ tự.\

#block()[
  *Cách đặc tính cơ bản của TCP:*
  - Point-to-point: Trong một giao thức TCP, chỉ có một sender và một server được kết nối với nhau bằng 3-way handshaking.
  - Reliable, in-order bit stream: Hỗ trợ truyền tin cậy và đúng thứ tự.
  - Pipelined: Truyền song song nhằm tăng hiệu quả gửi nhận
  - Flow control: Receiver kiểm soát tốc độ gửi của sender để tránh làm quá tải receiver.
  - Congestion control: Tự động điều chỉnh tốc độ gửi ở mức tối đa mà không làm tắc nghẽn hệ thống.
  - Full-duplex connection: hỗ trợ truyền hai chiều trong cùng một thời điểm trong một kết nối.
]
