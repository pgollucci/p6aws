######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_group_certificate_authority_create(group_id)
#
# Arg(s):
#    group_id - 
#
#
#>
######################################################################
p6_aws_greengrass_group_certificate_authority_create() {
    local group_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass create-group-certificate-authority --group-id $group_id "$@"
}