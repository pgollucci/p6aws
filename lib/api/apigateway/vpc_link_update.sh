######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_vpc_link_update(vpc_link_id)
#
# Arg(s):
#    vpc_link_id - 
#
#
#>
######################################################################
p6_aws_apigateway_vpc_link_update() {
    local vpc_link_id="$1"
    shift 1

    p6_run_write_cmd aws apigateway update-vpc-link --vpc-link-id $vpc_link_id "$@"
}