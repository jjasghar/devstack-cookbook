devstack Cookbook
======================
Cookbook to install devstack

Requirements
------------

Cookbooks:
git

Operating Systems:
ubuntu
centos

Attributes
----------
#### devstack::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['devstack']['host-ip']</tt></td>
    <td>String</td>
    <td>The host/ip to bind the stack to</td>
    <td><tt>198.101.10.10</tt></td>
  </tr>
  <tr>
    <td><tt>['devstack']['database-password']</tt></td>
    <td>String</td>
    <td>The password for the DevStack database</td>
    <td><tt>ostackdemo</tt></td>
  </tr>
  <tr>
    <td><tt>['devstack']['rabbit-password']</tt></td>
    <td>String</td>
    <td>The password for tde rabbit service</td>
    <td><tt>ostackdemo</tt></td>
  </tr>
  <tr>
    <td><tt>['devstack']['service-token']</tt></td>
    <td>String</td>
    <td>The token for the DevStack service user</td>
    <td><tt>token</tt></td>
  </tr>
  <tr>
    <td><tt>['devstack']['service-password']</tt></td>
    <td>String</td>
    <td>The password for the DevStack service user</td>
    <td><tt>ostackdemo</tt></td>
  </tr>
  <tr>
    <td><tt>['devstack']['admin-password']</tt></td>
    <td>String</td>
    <td>The password for the DevStack admin user</td>
    <td><tt>ostackdemo</tt></td>
  </tr>
  <tr>
    <td><tt>['devstack']['dest']</tt></td>
    <td>String</td>
    <td>The directory to install DevStack</td>
    <td><tt>/opt/stack</tt></td>
  </tr>
  <tr>
    <td><tt>['devstack']['pip-timeout']</tt></td>
    <td>Integer</td>
    <td>The default time out for pip</td>
    <td><tt>1000</tt></td>
  </tr>
</table>

Usage
-----
#### devstack::default

Just include `devstack` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[devstack]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Cameron Lopez
