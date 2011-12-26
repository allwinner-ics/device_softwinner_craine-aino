/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"

#define KEY_VOLUMEDOWN		217
#define KEY_VOLUMEUP		139
#define KEY_ENTER			KEY_POWER


char* MENU_HEADERS[] = { "Android system recovery utility (aino: vol up/vol down, vol up x 5, power)",
                         "",
                         NULL };

char* MENU_ITEMS[] = { "reboot system now",
                       "apply update from external storage",
                       "wipe data/factory reset",
                       "wipe cache partition",
                       "apply update from cache",
                       NULL };

void device_ui_init(UIParameters* ui_parameters) {
}

int device_recovery_start() {
    return 0;
}

int device_toggle_display(volatile char* key_pressed, int key_code) {
    //return key_code == KEY_HOME;

	//press vol up 5 times
    static int presses = 0;
    if (key_code == KEY_VOLUMEUP) {
        ++presses;
        return presses == 5;
    } else {
        presses = 0;
        return 0;
    }
}

int device_reboot_now(volatile char* key_pressed, int key_code) {
    return 0;
}

int device_handle_key(int key_code, int visible) {
    if (visible) {
        switch (key_code) {
            case KEY_DOWN:
            case KEY_VOLUMEDOWN:
                return HIGHLIGHT_DOWN;

            case KEY_UP:
            case KEY_VOLUMEUP:
                return HIGHLIGHT_UP;

            case KEY_ENTER:
                return SELECT_ITEM;
        }
    }

    return NO_ACTION;
}

int device_perform_action(int which) {
    return which;
}

int device_wipe_data() {
    return 0;
}
