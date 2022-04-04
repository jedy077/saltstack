install_httpd:
  pkg.installed:
    - name: httpd


index_html:
  file.managed:
    - name: /var/www/html/index.html
    - user: apache
    - group: apache
    - mode: 644
    - source: salt://apache-dev/index.html


service_start:
  service.running:
    - name: httpd
    - enable: True
