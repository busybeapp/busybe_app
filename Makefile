.PHONY: all

integration-tests-ios:
	flutter drive \
		--driver=test_driver/integration_test.dart \
		--target=integration_test/app_test.dart \
		--dart-define="CLOUD_URL=http://localhost:8080"

integration-tests-android:
	flutter drive \
		--driver=test_driver/integration_test.dart \
		--target=integration_test/app_test.dart \
		--dart-define="CLOUD_URL=http://10.0.2.2:8080"

unit-tests:
	flutter test

start-wiremock:
	$(MAKE) stop-wiremock || echo "Wiremock not running"
	java -jar wiremock/wiremock-standalone.jar --root-dir wiremock &


stop-wiremock:
	pkill -f "wiremock-standalone"
