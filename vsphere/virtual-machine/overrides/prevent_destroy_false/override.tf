resource "vsphere_virtual_machine" "vm" {
  lifecycle {
    ignore_changes = [
      resource_pool_id,
      datastore_id,
      datastore_cluster_id,
      network_interface.0.network_id,
      clone.0.template_uuid,
      clone.0.customize.0.network_interface.0.ipv4_address,
      clone.0.customize.0.network_interface.0.ipv4_netmask,
      clone.0.customize.0.ipv4_gateway,
      clone.0.customize.0.windows_options.0.admin_password,
      clone.0.customize.0.windows_options.0.domain_admin_password,
    ]
    prevent_destroy = false
  }
}