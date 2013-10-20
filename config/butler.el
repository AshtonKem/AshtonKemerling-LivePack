(add-to-list 'load-path "/home/ashton/Documents/Butler")
(require 'butler)
(add-to-list 'butler-server-list
             '(jenkins "Jenkins"
                       (server-address . "http://localhost:8080")))
