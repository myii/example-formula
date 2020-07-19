# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import example with context %}

example-package-install-pkg-installed:
  pkg.installed:
    - name: {{ example.pkg.name }}
