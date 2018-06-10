#gunicorn config

bind = "0.0.0.0:8080"
workers = 2
pidfile = "/home/box/web/etc/g_pid"
daemon = True
