## Ansible Role: Register Host in Satellite
This Ansible role registers a new host/VM with the Red Hat Satellite server.

## Requirements
- Ansible 2.9+
- Access to the Satellite server
- Proper credentials for Satellite server

## Role Variables
| Variable | Description | Default |
|----------|-------------|---------|
| `satellite_url` | URL of the Satellite server | `http://scgp1weuvmll-satlte-s01.scbde.corp` |
| `activation_key` | Activation key for the VM | `rhel89_pro` |
| `organization` | Organization name in Satellite | `SCTSGermany` |

## Dependencies
None.

## Example Playbook
```yaml
- hosts: all
    roles:
        - role: ansible-register-satellite
            vars:
                satellite_url: "http://scgp1weuvmll-satlte-s01.scbde.corp"
                activation_key: "rhel89_pro"
                organization: "SCTSGermany"
```
## How to Invoke the Playbook
Example 1: Registering a Host in the DEV Environment with Release 8.8  

ansible-playbook ansible/ansible-register-satellite/main.yml -i "180.210.44.213," -u svcansible --private-key ~/.ssh/svcansible_id_rsa --extra-vars 'release=8.8 environment=dev'

Example 2: Registering a Host in the PRE Environment with Release 8.9  

ansible-playbook ansible/ansible-register-satellite/main.yml -i "180.210.44.213," -u svcansible --private-key ~/.ssh/svcansible_id_rsa --extra-vars 'release=8.9 environment=pre'

Example 3: Registering a Host in the PRO Environment with Release 8.10  

ansible-playbook ansible/ansible-register-satellite/main.yml -i "180.210.44.213," -u svcansible --private-key ~/.ssh/svcansible_id_rsa --extra-vars 'release=8.10 environment=pro'

## License
MIT

## Author Information
This role was created by ruwinda.fernando@santander.de / @ruwindada
