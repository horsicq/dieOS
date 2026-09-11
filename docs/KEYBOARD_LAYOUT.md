# Changing the Keyboard Layout in dieOS

By default, **dieOS** boots with the standard **US English (QWERTY)** keyboard layout. 

Because dieOS is a highly optimized, headless (no GUI) environment, display managers and graphical settings are not available. Instead, the keyboard layout is managed directly at the kernel console level using the native Linux utility `loadkeys`.

## How to Change the Layout

You can change the keyboard layout instantly at any time while using the terminal. 

The basic syntax is:
```bash
loadkeys <country-code>