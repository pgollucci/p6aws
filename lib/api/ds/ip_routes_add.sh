######################################################################
#<
#
# Function:
#      = p6_aws_ds_ip_routes_add(directory_id, ip_routes)
#
# Arg(s):
#    directory_id - 
#    ip_routes - 
#
#
#>
######################################################################
p6_aws_ds_ip_routes_add() {
    local directory_id="$1"
    local ip_routes="$2"
    shift 2

    p6_run_write_cmd aws ds add-ip-routes --directory-id $directory_id --ip-routes $ip_routes "$@"
}