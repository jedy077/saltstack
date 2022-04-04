disable_usb:
  file.managed:
    - name: /etc/modprobe.d/blacklist-usbstorage
    - contents: |
        # Blacklist USB storage
        blacklist usb-storage
