apache:
  pkg.installed:[]
  service.running:
    - watch:
      - pkg: apache
      - file: /etc/httpd/conf/httpd.conf
      - user: apache
  user.preset:
    - uid: 87
    - gid: 87
    - home: /var/www/html
    - shell: /bin/noloing
    - require:
      - pkg: apache
  group.present:
    - gid:87
    - require:
      - pkg: apache

/etc/httpd/conf/httpd.conf:
  - source: salt://apache/httpd.conf
  - user: root
  - group: root
  - mode: 644
