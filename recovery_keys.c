#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"

int device_handle_key(int key_code, int visible) {
    if (visible) {
        switch (key_code) {
            case KEY_CAMERA:
                return HIGHLIGHT_DOWN;

            case KEY_POWER:
                return SELECT_ITEM;
        }
    }

    return NO_ACTION;
}
