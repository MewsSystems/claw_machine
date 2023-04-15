build_rpi:
	flutter build linux --dart-define env=rpi

start_service:
	sudo systemctl start claw.service

stop_service:
	sudo systemctl stop claw.service

deps_graph_all:
	flutter pub run lakos lib -i "{**.freezed.dart,**.g.dart,di.config.dart,gen/**,di.dart}" --metrics > deps.dot
	dot -Tpng -Gdpi=200 -o deps.png deps.dot
