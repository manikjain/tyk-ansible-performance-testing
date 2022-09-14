ansible-playbook azure.playbook.yml -t standup -e '{ "azure_vm_size": "Standard_F16s_v2", "azure_image": { "offer": "RHEL", "publisher": "RedHat", "sku": "8_6", "version": "8.6.2022070801" }, "test_services": [ "tyk", "kong", "apollo" ] }'

ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-1-vanilla"vanilla", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-2-vanilla"vanilla", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-3-vanilla"vanilla", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-1-auth"auth", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-2-auth"auth", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-3-auth"auth", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [ "tyk" ], "enable_auth": false, "enable_analytics": true, "enable_quota": false, "enable_rate_limiting": false }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk" ], "enable_auth": false, "enable_analytics": true, "enable_quota": false, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-1-analytics"analytics", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk" ], "enable_auth": false, "enable_analytics": true, "enable_quota": false, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-2-analytics"analytics", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk" ], "enable_auth": false, "enable_analytics": true, "enable_quota": false, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-3-analytics"analytics", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": true, "enable_rate_limiting": false }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": true, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-1-auth-quota"auth-quota", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": true, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-2-auth-quota"auth-quota", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": true, "enable_analytics": false, "enable_quota": true, "enable_rate_limiting": false, "prefix": "Standard_F16s_v2-azure-3-auth-quota"auth-quota", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": true }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": true, "prefix": "Standard_F16s_v2-azure-1-rate-limiting"rate-limiting", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": true, "prefix": "Standard_F16s_v2-azure-2-rate-limiting"rate-limiting", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk", "kong" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": true, "prefix": "Standard_F16s_v2-azure-3-rate-limiting"rate-limiting", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t install -t standup -e '{ "query_type": "REST", "test_services": [ "tyk" ], "enable_auth": true, "enable_analytics": true, "enable_quota": true, "enable_rate_limiting": true }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk" ], "enable_auth": true, "enable_analytics": true, "enable_quota": true, "enable_rate_limiting": true, "prefix": "Standard_F16s_v2-azure-1-all"all", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk" ], "enable_auth": true, "enable_analytics": true, "enable_quota": true, "enable_rate_limiting": true, "prefix": "Standard_F16s_v2-azure-2-all"all", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "REST", "test_services": [ "tyk" ], "enable_auth": true, "enable_analytics": true, "enable_quota": true, "enable_rate_limiting": true, "prefix": "Standard_F16s_v2-azure-3-all"all", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t install -t standup -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 0 }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 0, "prefix": "Standard_F16s_v2-azure-1", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 0, "prefix": "Standard_F16s_v2-azure-2", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 0, "prefix": "Standard_F16s_v2-azure-3", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t install -t standup -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 1 }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 1, "prefix": "Standard_F16s_v2-azure-1", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 1, "prefix": "Standard_F16s_v2-azure-2", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 1, "prefix": "Standard_F16s_v2-azure-3", "load_test_duration": "5m" }'

ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t install -t standup -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 2 }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 2, "prefix": "Standard_F16s_v2-azure-1", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 2, "prefix": "Standard_F16s_v2-azure-2", "load_test_duration": "5m" }'
ansible-playbook playbook.yml -i hosts/Standard_F16s_v2-azure-hosts.yml -t test -e '{ "query_type": "STITCH", "test_services": [ "tyk", "apollo" ], "enable_auth": false, "enable_analytics": false, "enable_quota": false, "enable_rate_limiting": false, "query_depth": 2, "prefix": "Standard_F16s_v2-azure-3", "load_test_duration": "5m" }'

ansible-playbook azure.playbook.yml -t cleanup -e '{ "azure_vm_size": "Standard_F16s_v2", "test_services": [ "tyk", "kong", "apollo" ] }'
