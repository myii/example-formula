# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import example with context %}

example-service-clean-service-dead:
  service.dead:
    - name: {{ example.service.name }}
    - enable: False
