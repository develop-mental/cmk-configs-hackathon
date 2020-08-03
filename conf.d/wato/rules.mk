# Written by Check_MK store (2020-08-03 13:34:03)


active_checks.setdefault('cmk_inv', [])

active_checks['cmk_inv'] = [
{'condition': {'host_labels': {u'cmk/docker_object': u'node'}}, 'value': {'status_data_inventory': True}},
] + active_checks['cmk_inv']


globals().setdefault('bulkwalk_hosts', [])

bulkwalk_hosts = [
{'condition': {'host_tags': {'snmp': 'snmp', 'snmp_ds': {'$ne': 'snmp-v1'}}}, 'value': True, 'options': {'description': u'Hosts with the tag "snmp-v1" must not use bulkwalk'}},
] + bulkwalk_hosts


extra_host_conf.setdefault('notification_options', [])

extra_host_conf['notification_options'] = [
{'condition': {}, 'value': 'd,r,f,s'},
] + extra_host_conf['notification_options']


extra_service_conf.setdefault('check_interval', [])

extra_service_conf['check_interval'] = [
{'condition': {'service_description': [{'$regex': 'Check_MK HW/SW Inventory$'}]}, 'value': 1440, 'options': {'description': u'Restrict HW/SW-Inventory to once a day'}},
] + extra_service_conf['check_interval']


globals().setdefault('host_check_commands', [])

host_check_commands = [
{'condition': {'host_labels': {u'cmk/docker_object': u'container'}}, 'value': ('service', u'Docker container status'), 'options': {'description': u'Make all docker container host states base on the "Docker container status" service'}},
] + host_check_commands


globals().setdefault('host_contactgroups', [])

host_contactgroups = [
{'condition': {}, 'value': 'all', 'options': {'description': u'Put all hosts into the contact group "all"'}},
] + host_contactgroups


globals().setdefault('inventory_df_rules', [])

inventory_df_rules = [
{'condition': {'host_labels': {u'cmk/check_mk_server': u'yes'}}, 'value': {'ignore_fs_types': ['tmpfs', 'nfs', 'smbfs', 'cifs', 'iso9660'], 'never_ignore_mountpoints': [u'~.*/omd/sites/[^/]+/tmp$']}},
] + inventory_df_rules


globals().setdefault('only_hosts', [])

if only_hosts is None:
    only_hosts = []

only_hosts = [
{'condition': {'host_tags': {'criticality': {'$ne': 'offline'}}}, 'value': True, 'options': {'description': u'Do not monitor hosts with the tag "offline"'}},
] + only_hosts


globals().setdefault('periodic_discovery', [])

periodic_discovery = [
{'condition': {}, 'value': {'severity_unmonitored': 1, 'severity_vanished': 0, 'inventory_check_do_scan': True, 'check_interval': 120.0}, 'options': {'description': u'Perform every two hours a service discovery'}},
] + periodic_discovery


globals().setdefault('ping_levels', [])

ping_levels = [
{'condition': {'host_tags': {'networking': 'wan'}}, 'value': {'loss': (80.0, 100.0), 'packets': 6, 'timeout': 20, 'rta': (1500.0, 3000.0)}, 'options': {'description': u'Allow longer round trip times when pinging WAN hosts'}},
] + ping_levels

