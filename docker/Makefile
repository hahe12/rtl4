default: sel4-dev-aarch64
all: $(TARGET_LIST)

ARCH_LIST   = x86 arm aarch64 riscv riscv64
TARGET_LIST = $(foreach t,$(ARCH_LIST),sel4-dev-$(t))

sel4-dev-%: sel4-dev-base
	@echo Generating docker image $@
	docker build -t $@ -f dockerfiles/$@.Dockerfile .

