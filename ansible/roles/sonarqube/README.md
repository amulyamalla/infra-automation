Role Name
=========

Ansible Role for `Sonarqube`

Requirements
------------

This role doesn't need any specialized modules.

Role Variables
--------------
```sh
version: 6.7.7
sonarqube_binary: "https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-{{ version }}.zip"
sonarqube_username: "sonar"
sonarqube_password: "sonardb"
mysql_url: "jdbc:mysql://localhost:3306/sonardb?useUnicode=true&characterEncoding=utf8&rewriteBatchedStatements=true&useConfigs=maxPerformance&useSSL=false"
sonarqube_host: "0.0.0.0"
```

Dependencies
------------

This role is dependent on `osm_java`, `osm_mysql`.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```sh
---
- name: apply common configuration to all nodes
 hosts: "{{ host }}"
 become: true
 roles:
     - { role: osm_sonar, tags: ["sonar"] }
```


License
-------

BSD

