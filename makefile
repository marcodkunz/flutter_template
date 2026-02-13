.PHONY: format codegen

codegen: ## Run build_runner to generate code
	dart run build_runner build --delete-conflicting-outputs

format: ## Format Dart code in lib/ folder
	dart format lib/