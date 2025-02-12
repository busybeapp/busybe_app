.PHONY: all


WIREMOCK_URL ?= http://localhost:8080
DEVICE ?=  # Set the default to nothing

integration-tests:
	@echo "Running integration tests..."
	@if [ -n "$(DEVICE)" ]; then \
		flutter drive -d $(DEVICE) \
			--driver=test_driver/integration_test.dart \
			--target=integration_test/app_test.dart \
			--dart-define="CLOUD_URL=$(WIREMOCK_URL)"; \
	else \
		flutter drive \
			--driver=test_driver/integration_test.dart \
			--target=integration_test/app_test.dart \
			--dart-define="CLOUD_URL=$(WIREMOCK_URL)"; \
	fi

unit-tests:
	flutter test

start-wiremock:
	$(MAKE) stop-wiremock || echo "Wiremock not running"
	java -jar wiremock/wiremock-standalone.jar --root-dir wiremock

stop-wiremock:
	pkill -f "wiremock-standalone" || true
