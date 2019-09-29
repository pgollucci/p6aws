######################################################################
#<
#
# Function:
#      = p6_aws_greengrass_group_certificate_authorities_list(group_id)
#
# Arg(s):
#    group_id - 
#
#
#>
######################################################################
p6_aws_greengrass_group_certificate_authorities_list() {
    local group_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass list-group-certificate-authorities --group-id $group_id "$@"
}