TARGET=iotop
OBJS=main.o ioprio.o utils.o views.o xxxid_info.o
CFLAGS=-Wall -O2 --pedantic --std=c99
LDFLAGS=-lncurses

PREFIX=/usr
BUILD_DIR=./build
OBJS_OUTPUT=$(addprefix $(BUILD_DIR)/, $(OBJS))

$(TARGET): $(BUILD_DIR)/$(TARGET)

$(BUILD_DIR)/$(TARGET): $(OBJS_OUTPUT)
	$(CC) -o $@ $^ $(LDFLAGS)

$(BUILD_DIR)/%.o: src/%.c $(BUILD_DIR)
	$(CC) -c $(CFLAGS) -o $@ $<

$(BUILD_DIR):
	[ -d $(BUILD_DIR) ] || mkdir $(BUILD_DIR)

.PHONY: clean install

clean:
	rm -f $(OBJS) $(TARGET)

install:
	cp $(BUILD_DIR)/$(TARGET) $(PREFIX)/bin/$(TARGET)

uninstall:
	rm $(PREFIX)/bin/$(TARGET)

