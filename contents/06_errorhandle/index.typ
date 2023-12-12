= Error Handling
== Server not running
Khi Client kết nối tới Server, nếu Server không hoạt động, hệ thống sẽ hiển thị thông báo lỗi và yêu cầu khởi động lại Server.
#figure(caption: [Server not running],
            image("../../components/assets/server_not_start.png"))
== Connection error
Khi một trong hai kết nối giữa Client và Server bị lỗi, hệ thống sẽ hiển thị thông báo lỗi ở mỗi phía. Nếu là lỗi ảnh hưởng đến hệ thống, hệ thống sẽ tự động tắt. Nếu là lỗi không ảnh hưởng đến hệ thống, hệ thống sẽ hiển thị thông báo lỗi và tiếp tục hoạt động.
#figure(caption: [Connection error],
            image("../../components/assets/connection_error.png"))
#pagebreak()
== Login & Register: Wrong input format
Hệ thống sẽ kiểm tra các trường nhập vào có đúng định dạng hay không.\
Nếu không đúng định dạng, hệ thống sẽ hiển thị thông báo lỗi và yêu cầu nhập lại.\
#figure(caption: [Wrong input format],
            image("../../components/assets/format_error.png"))
== Register: User already exist
Hệ thống sẽ kiểm tra xem username đã tồn tại hay chưa.\
Nếu đã tồn tại, hệ thống sẽ hiển thị thông báo lỗi và yêu cầu nhập lại.\
#figure(caption: [User already exist],
            image("../../components/assets/user_already_exists.png"))
== Login: User not found
Hệ thống sẽ kiểm tra xem username đã tồn tại hay chưa.\
Nếu chưa tồn tại, hệ thống sẽ hiển thị thông báo lỗi và yêu cầu nhập lại.\
#figure(caption: [User not found],
            image("../../components/assets/user_not_found.png"))
== Login: Wrong password
Hệ thống sẽ kiểm tra xem password có đúng hay không.\
Nếu không đúng, hệ thống sẽ hiển thị thông báo lỗi và yêu cầu nhập lại.\
#figure(caption: [Wrong password],
            image("../../components/assets/wrong_password.png"))
== Login: User already online
Hệ thống sẽ kiểm tra xem username đã đăng nhập hay chưa.\
Nếu đã đăng nhập, hệ thống sẽ hiển thị thông báo lỗi và yêu cầu nhập lại.\
#figure(caption: [User already online],
            image("../../components/assets/user_already_online.png"))
#pagebreak()
== Publish: File not found
Hệ thống sẽ kiểm tra xem file có tồn tại hay không. Nếu không tồn tại, hệ thống sẽ hiển thị thông báo lỗi và yêu cầu nhập lại.\
#figure(caption: [File not found],
            image("../../components/assets/file_doesnot_exists.png"))
== Publish: File already published
Hệ thống sẽ kiểm tra xem file đã được Publish hay chưa. Nếu đã được Publish, hệ thống sẽ hiển thị thông báo lỗi và yêu cầu nhập lại.\
#figure(caption: [File already published],
            image("../../components/assets/user_already_published.png"))
#pagebreak()
== Fetch: File not found
Hệ thống sẽ kiểm tra xem file có tồn tại hay không. Nếu không tồn tại, hệ thống sẽ hiển thị thông báo lỗi và yêu cầu nhập lại.\
#figure(caption: [File not found],
            image("../../components/assets/fetch_not_found.png"))
== Fetch: File already fetched
Hệ thống sẽ kiểm tra xem file đã được Fetch hay chưa. Nếu đã được fetch, hệ thống sẽ tự động duplicate file cho người dùng.\
#figure(caption: [File already fetched],
            image("../../components/assets/fetch_duplicate.png"))
#pagebreak()
