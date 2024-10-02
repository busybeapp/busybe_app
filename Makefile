.PHONY: all

integration-tests:
	flutter drive \
    	--driver=test_driver/integration_test.dart \
        --target=integration_test/count_test.dart

unit-tests:
	flutter test

start-wiremock:
	$(MAKE) stop-wiremock || echo "Wiremock not running"
	wget -O wiremock-standalone.jar https://repo1.maven.org/maven2/org/wiremock/wiremock-standalone/3.9.1/wiremock-standalone-3.9.1.jar
	java -jar wiremock-standalone.jar &

stop-wiremock:
	pkill -f "wiremock-standalone"
