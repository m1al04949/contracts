# Makefile

# Команда по умолчанию
.DEFAULT_GOAL := generate

# Переменные
PROTO_DIR := ./contracts/proto
GO_OUT_DIR := ./contracts/gen/go

# Цель для генерации кода
generate:
	protoc -I $(PROTO_DIR) $(PROTO_DIR)/sso/sso.proto \
		--go_out=$(GO_OUT_DIR) --go_opt=paths=source_relative \
		--go-grpc_out=$(GO_OUT_DIR) --go-grpc_opt=paths=source_relative