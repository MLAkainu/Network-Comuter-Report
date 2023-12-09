= Socket programming with Python
Socket là cánh cổng ngăn cách giữa Application Layer với Transport Layer. 
#figure(caption: [Mô hình socket],
            image("../../components/assets/socket.png"))
Thư viện socket của Python hỗ trợ một số API sau để thiết lập kết nối socket TCP/UDP:
#block()[
  - socket()
  - bind()
  - listen()
  - accept()
  - connect()
  - connect_ex()
  - send()
  - recv()
  - close()
]
Thư viện socket của Python hỗ trợ cả TCP socket lẫn UDP socket. Trong project này, nhóm dự định sử dụng TCP socket để hiện thực dự án.\
Flow của một TCP socket connection có thể được thể hiện như hình dưới đây:
#figure(caption: [ Quy trình một kết nối socket để gửi nhận dữ liệu (Nguồn ResearchGate)],
            image("../../components/assets/connsoc.png"))
#pagebreak()
= Application design
== Architecture design
#figure(caption: [Kiến trúc tổng quan của hệ thống],
            image("../../components/assets/design.png"))
#pagebreak()
== Flow protocol design
=== Register
#figure(caption: [Sơ đồ luồng của chức năng đăng ký],
            image("../../components/assets/register.png"))

=== Login
#figure(caption: [Sơ đồ luồng của chức năng đăng nhập],
            image("../../components/assets/login.png"))

=== Ping 
#figure(caption: [Sơ đồ luồng của chức năng ping],
            image("../../components/assets/ping.png"))

=== Discover
#figure(caption: [Sơ đồ luồng của chức năng discover],
            image("../../components/assets/discover.png"))
#pagebreak()
=== Publish
#figure(caption: [Sơ đồ luồng của chức năng publish],
            image("../../components/assets/publish.png"))

=== Fetch
#figure(caption: [Sơ đồ luồng của chức năng fetch],
            image("../../components/assets/fetch.png"))
#pagebreak()
== Activity diagram
=== Register
#figure(caption: [Sơ đồ hoạt động của chức năng đăng ký],
            image("../../components/assets/ActivityRe.png"))

=== Login
#figure(caption: [Sơ đồ hoạt động của chức năng đăng nhập],
            image("../../components/assets/Activity_Lo.png"))

=== Ping
#figure(caption: [Sơ đồ hoạt động của chức năng ping],
            image("../../components/assets/Activity_ping.png"))
#pagebreak()
=== Discover

#figure(caption: [Sơ đồ hoạt động của chức năng discover],
            image("../../components/assets/ActivityDis.png"))

#pagebreak()
=== Publish

#figure(caption: [Sơ đồ hoạt động của chức năng publish],
            image("../../components/assets/ActivityPub.png"))


=== Fetch

#figure(caption: [Sơ đồ hoạt động của chức năng fetch],
            image("../../components/assets/Activity_fe.png"))

#pagebreak()