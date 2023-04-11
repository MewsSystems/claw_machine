build_rpi:
	flutter build linux --dart-define env=rpi

stop_service:
	sudo systemctl start claw.service

stop_service:
	sudo systemctl stop claw.service
