.PHONY: all

it-test:
	flutter drive \
    	--driver=test_driver/integration_test.dart \
        --target=integration_test/count_test.dart
