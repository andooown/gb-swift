TOOLS_PACKAGE_PATH := Tools
TOOLS_PATH := ${TOOLS_PACKAGE_PATH}/.build/release

.PHONY: build-tools
build-tools:
	@swift build -c release --package-path ${TOOLS_PACKAGE_PATH} --product swiftlint
	
.PHONY: lint
lint:
	@${TOOLS_PATH}/swiftlint lint --quiet ${LINT_ADDITIONAL_OPTION}

.PHONY: lint-strict
lint-strict:
	@$(MAKE) lint LINT_ADDITIONAL_OPTION=--strict

.PHONY: format
format:
	@${TOOLS_PATH}/swiftlint --fix --quiet
	
.PHONY: clean
clean:
	rm -rf ./${TOOLS_PACKAGE_PATH}/.swiftpm
	rm -rf ./${TOOLS_PACKAGE_PATH}/.build
