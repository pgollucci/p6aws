######################################################################
#<
#
# Function:
#      = p6_aws_waf_ip_set_create(name, change_token)
#
# Arg(s):
#    name - 
#    change_token - 
#
#
#>
######################################################################
p6_aws_waf_ip_set_create() {
    local name="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf create-ip-set --name $name --change-token $change_token "$@"
}