{% if grains['os'] == 'RedHat' %}
apache: httpd
git: git
{% elif grains['os'] == 'Devian' %}
apache: apache2
git: git-core
{% endif %}

company: foo Indestries

