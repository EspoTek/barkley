if (stef=0) {
if (keyboard_check_direct(global.key_cancel)) keyboard_key_press(global.key_cancel);
//if (keyboard_check_direct(global.key_up)) keyboard_key_press(global.key_up);
//if (keyboard_check_direct(global.key_down)) keyboard_key_press(global.key_down);
//if (keyboard_check_direct(global.key_left)) keyboard_key_press(global.key_left);
//if (keyboard_check_direct(global.key_right)) keyboard_key_press(global.key_right);
} else {
if (keyboard_check_direct(global.key_cancel)) x=x;
if (keyboard_check_direct(global.key_up)) x=x;
if (keyboard_check_direct(global.key_down)) x=x;
if (keyboard_check_direct(global.key_left)) x=x;
if (keyboard_check_direct(global.key_right)) x=x;
}
