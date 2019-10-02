######################################################################
#<
#
# Function:
#	p6_aws_ds_ip_routes_remove(directory_id, cidr_ips)
#
#  Args:
#	directory_id - 
#	cidr_ips - 
#
#>
######################################################################
p6_aws_ds_ip_routes_remove() {
    local directory_id="$1"
    local cidr_ips="$2"
    shift 2

    p6_run_write_cmd aws ds remove-ip-routes --directory-id $directory_id --cidr-ips $cidr_ips "$@"
}