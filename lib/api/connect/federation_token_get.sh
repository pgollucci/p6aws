######################################################################
#<
#
# Function:
#      = p6_aws_connect_federation_token_get(instance_id)
#
# Arg(s):
#    instance_id - 
#
#
#>
######################################################################
p6_aws_connect_federation_token_get() {
    local instance_id="$1"
    shift 1

    p6_run_read_cmd aws connect get-federation-token --instance-id $instance_id "$@"
}