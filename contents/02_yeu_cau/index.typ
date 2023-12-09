= Phân tích yêu cầu

== Functional requirements 

Xây dựng một ứng dụng chia sẻ file đơn giản với giao thức được định nghĩa sẵn, sử dụng những giao thức trong TCP/IP stack.
=== Client Functions

#block()[
  *Basic functions*
  #block(inset:(left:1cm))[
    *Đăng ký trong kho lưu trữ*
    #linebreak()
    - Máy khách có thể gửi yêu cầu đăng ký file có trong kho lưu trữ cho máy chủ.
    - Thông điệp đắng ký file: "publish <lname> <fname>". File <lname> trên máy khách sẽ được thêm vào kho lưu trữ dưới tên <fname>.
    - Các file sau khi đăng ký sẽ được lưu trữ trong kho lưu trữ của tài khoản được liên kết với máy chủ.
    *Gửi yêu cầu tải file cho server*
    #linebreak()
    - Máy khách có thể gửi yêu cầu tải file không có sẵn trong kho lưu trữ của mình. Lúc này máy chủ sẽ phản hồi lại danh sách các máy khách khác có file được yêu cầu.
    *Tải file trực tiếp từ nguồn muốn chọn*
    #linebreak()
    - Máy khách sau khi nhận được phản hồi từ máy chủ danh sách máy khách có sẵn file được yêu cầu có thể chọn một nguồn thích hợp và gửi yêu cầu tải file tới đó.
    - Các máy khách được cung cấp một danh sách yêu cầu tải file từ các máy khách khác, máy khách có thể chọn 1 file trong danh sách và gửi yêu cầu tải file tới máy khách đó.
    - Thông điệp tải file: "fetch <fname>". Trong đó fname là 1 trong những tên file muốn chọn sau khi server đã phản hồi.
  ]
  *Extended functions*
  #block(inset:(left:1cm))[
      *Đăng ký tài khoản*
      - Người dùng đăng ký địa chỉ của máy vào hệ thống của máy chủ.
      * Đăng nhập tài khoản và xác thực*
      -  Người dùng đăng nhập tài khoản để sử dụng các chức năng của hệ thống.
      *Liệt kê danh sách lưu trữ*
      - Máy khách có thể kiểm tra danh sach các file có trong kho lưu trữ của mình.
      *Tìm kiếm bằng từ khóa*
      - Server sẽ hỗ trợ người dùng tìm kiếm file theo từ khóa.
  ]
]
=== Server Functions

#block()[
  *Basic functions*
  #block(inset:(left:1cm))[
    * Kiểm tra trạng thái máy chủ*
    #linebreak()
    - Máy chủ có thể kiểm tra trạng thái của máy chủ khác thông qua lệnh "ping \<hostname\>"
    *Xem danh sách file của máy khách khác*
    #linebreak()
    - Máy chủ có thể xem danh sách file trong kho lưu trữ của các máy khách thông qua lệnh "discover \<hostname\>"
    *Gửi thông tin cần thiết sau khi nhận yêu cầu tải file từ clients*
    #linebreak()
    - Sau khi nhận được yêu cầu tìm file từ người dùng, server sẽ tiến hành theo dõi và tìm kiếm để trả về các thông tin nơi đang lưu trữ các file đó cho clients: ID peer, thời gian file được cập nhật.

  ]
  *Extended functions*
  #block(inset:(left:1cm))[
    *Xem file log*
    - Máy chủ có thể xem file log của máy khách khác thông qua.
  ]
]
== Non-functional requirements

#block()[
  *Giao diện người dùng*
  – Cung cấp giao diện người dùng dễ sử dụng cho máy khách để nhập các lệnh và theo dõi quá trình tải tệp.
  *Multi-threading*
  – Triển khai đa luồng trong máy khách để có thể xử lý nhiều tải xuống cùng lúc.
  *Hiệu năng và tích hợp*
  – Đảm bảo rằng hệ thống hoạt động hiệu quả và có khả năng tích hợp với các mạng internet và hệ thống người dùng khác nhau.

]
== Phân tích kiến trúc
=== Kiến trúc Peer-to-Peer (P2P)
- Kiến trúc Peer-to-Peer (P2P) là một mô hình mạng máy tính trong đó các máy tính (được gọi là nút hoặc "peers") kết nối trực tiếp với nhau để chia sẻ tài nguyên và thông tin mà không cần sự tương tác trung tâm từ máy chủ. Trong kiến trúc P2P, mỗi máy tính có thể đồng thời hoạt động như máy khách và máy chủ, có nghĩa là chúng có khả năng yêu cầu tài nguyên từ các máy tính khác và chia sẻ tài nguyên với người khác.
=== Kiến trúc client-server
- Kiến trúc client-server (còn được gọi là mô hình client-server) là một kiến trúc máy tính phổ biến được sử dụng trong việc tổ chức và quản lý các dịch vụ và tài nguyên trên mạng. Nó dựa trên sự phân chia các vai trò chính trong hệ thống thành hai phần: máy khách (client) và máy chủ (server). Hai phần này tương tác với nhau để cung cấp các dịch vụ, ứng dụng, và tài nguyên cho người dùng.
#pagebreak()
