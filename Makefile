createmigrate:
	migrate create -ext sql -dir db/migrations -seq $(name)

migrateup:
	migrate -path db/migrations -database "mysql://root:root@tcp(localhost:3307)/gokapster?multiStatements=true" -verbose up

migratedown:
	migrate -path db/migrations -database "mysql://root:root@tcp(localhost:3307)/gokapster?multiStatements=true" -verbose down

run:
	go run cmd/main.go

.PHONY: createmigrate migrateup migratedown run