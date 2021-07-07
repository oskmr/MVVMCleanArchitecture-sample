PRODUCT_NAME := MVVMCleanArchitecture-sample

.PHONY: generate-xcworkspace
xcodegen:
	mint run xcodegen xcodegen generate
	bundle exec pod install
	make open

.PHONY: pod-install
pod-install:
	bundle exec pod install

.PHONY: open
open:
	open ./${PRODUCT_NAME}.xcworkspace