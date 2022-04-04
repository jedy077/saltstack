base:

dev:
  '*':
    - ssh
  'role:web':
    - match: grain
    - apache
    - firewalld

prod:
  '*':
    - ssh
    - security.disable-usb
  'role:web':
    - match: grain
    - apache-prod
    - firewalld

