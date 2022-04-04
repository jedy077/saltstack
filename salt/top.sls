base:

dev:
  '*':
    - ssh
  'G@role:web':
    - match: grain
    - apache
    - firewalld

prod:
  '*':
    - ssh
    - security.disable-usb
  'G@role:web':
    - match: grain
    - apache-prod
    - firewalld

