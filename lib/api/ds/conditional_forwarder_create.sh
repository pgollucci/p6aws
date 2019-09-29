######################################################################
#<
#
# Function:
#      = p6_aws_ds_conditional_forwarder_create(directory_id, remote_domain_name, dns_ip_addrs)
#
# Arg(s):
#    directory_id - 
#    remote_domain_name - 
#    dns_ip_addrs - 
#
#
#>
######################################################################
p6_aws_ds_conditional_forwarder_create() {
    local directory_id="$1"
    local remote_domain_name="$2"
    local dns_ip_addrs="$3"
    shift 3

    p6_run_write_cmd aws ds create-conditional-forwarder --directory-id $directory_id --remote-domain-name $remote_domain_name --dns-ip-addrs $dns_ip_addrs "$@"
}