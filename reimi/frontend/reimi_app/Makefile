.PHONY: setup
setup:
	fvm flutter clean
	fvm flutter pub get

.PHONY: generate
generate:
	fvm flutter clean
	fvm flutter pub get
	fvm flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: analyze
analyze:
	fvm flutter analyze

.PHONY: gen
gen:
	fvm dart run build_runner build
