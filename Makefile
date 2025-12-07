-include .env

.EXPORT_ALL_VARIABLES:
MAKEFLAGS += --no-print-directory

# Deploy scripts
deploy-counter:
	@forge script script/Counter.s.sol --rpc-url $(PROVIDER_URL) --private-key $(PRIVATE_KEY) --broadcast --slow --verify -vvvv
