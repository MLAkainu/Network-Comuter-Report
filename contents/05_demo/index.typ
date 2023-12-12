= Design UI
== Register and Login 

#figure(caption: [UI Register and Login],
            image("../../components/assets/UIlogin.png"))

Đây là trang đăng ký, đăng nhập vào hệ thống bao gồm: địa chỉ IP Server, username, password, địa chỉ IP Peer, địa chỉ Peer Port.\
Phía dưới có 2 nút: Register và Login.\
Khi nhấn nút Register, hệ thống sẽ gửi thông tin đăng ký lên Server.\
Khi nhấn nút Login, hệ thống sẽ gửi thông tin đăng nhập lên Server.\

#pagebreak()
== Publish Page

#figure(caption: [UI Publish File],
            image("../../components/assets/UIpublish.png"))

Đây là trang Publish File, bao gồm: đường dẫn file, tên file fname sau khi publish, mô tả file, nút Publish.\
Khi nhấn nút Publish, hệ thống sẽ gửi thông tin Publish lên Server.\
Phía dưới là lưới hiển thị danh sách các file đã Publish.\
#pagebreak()
== Fetch Page
#figure(caption: [UI Fetch File],
            image("../../components/assets/UIfetch.png"))

Đây là trang Fetch File, bao gồm: tên file fname cần Fetch, nút Search.\
Sau khi Search, giao diện sẽ hiển thị danh sách các file có tên fname.\
Người dùng có thể chọn 1 file trong danh sách và nhấn nút Fetch để Fetch file về.\
#pagebreak()
Ngoài ra còn hiển thị thông tin người dùng: username, địa chỉ IP Peer, địa chỉ Peer Port.\

#figure(caption: [UI Profile],
            image("../../components/assets/UIprofile.png"))

#pagebreak()
= Tutorial - Guides
== Server
Người dùng có thể start server bằng cách chạy file server.py\
#figure(caption: [Start Server],
            image("../../components/assets/GuServer.png"))
#figure(caption: [Start Server],
            image("../../components/assets/start.png"))
=== ping 
Server có thể ping tới các Peer khác bằng cách nhập ping <<Host>> \
Nếu ping thành công, sẽ hiển thị thông báo client đang hoạt động\
#figure(caption: [Ping],
            image("../../components/assets/pingHV.jpg"))
#pagebreak()
Nếu ping thất bại, sẽ hiển thị thông báo client không hoạt động\
            
#figure(caption: [Ping No Online],
            image("../../components/assets/pingABC.jpg"))

=== Dícover
Server có thể discover các Peer khác bằng cách nhập discover\
#figure(caption: [Discover],
            image("../../components/assets/discover.jpg"))
#pagebreak()
== Client
Người dùng có thể start client bằng cách chạy file main.py\
#figure(caption: [Start Client],
            image("../../components/assets/client_start.png"))

=== Register
Người dùng sẽ nhập IP Server, username, password, địa chỉ IP Peer, địa chỉ Peer Port để đăng ký tài khoản trên hệ thống.\
#figure(caption: [Client Register],
            image("../../components/assets/clientRe.jpg"))

Giao diện sẽ hiển thị thông báo đăng ký thành công\
#figure(caption: [Client Register Success],
            image("../../components/assets/Success.jpg"))
Phía Server sẽ hiển thị thông báo đăng ký thành công\
#figure(caption: [Server Register Success],
            image("../../components/assets/server_register.png"))


=== Login
Người dùng sẽ nhập IP Server, username, password, địa chỉ IP Peer, địa chỉ Peer Port để đăng nhập vào hệ thống.\
#figure(caption: [Client Login],
            image("../../components/assets/Login.jpg"))


Phía Server sẽ hiển thị thông báo đăng nhập thành công\
#figure(caption: [Login Success],
            image("../../components/assets/LoginSuccess.jpg"))
=== Publish

Người dùng sẽ nhập đường dẫn file, mô tả file và nhấn nút Publish để Publish file lên hệ thống.\
#figure(caption: [Publish],
            image("../../components/assets/Client_publish.jpg"))

Giao diện sẽ hiển thị file đã Publish vào danh sách\
#figure(caption: [Publish Success],
            image("../../components/assets/publish_su.jpg"))

=== Fetch
Người dùng sẽ nhập tên file cần Fetch và nhấn nút Search để tìm kiếm file.\
#figure(caption: [Fetch],
            image("../../components/assets/search.jpg"))

Sau khi chọn file cần Fetch và nhấn nút Fetch, file sẽ được Fetch về.\
#figure(caption: [Fetch Success],
            image("../../components/assets/fetch_su.jpg"))

Lưới danh sách file sẽ hiển thị file đã Fetch về.\
#figure(caption: [Fetch Success],
            image("../../components/assets/file.jpg"))


#pagebreak()