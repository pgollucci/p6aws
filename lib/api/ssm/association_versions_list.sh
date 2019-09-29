######################################################################
#<
#
# Function:
#      = p6_aws_ssm_association_versions_list(association_id)
#
# Arg(s):
#    association_id - 
#
#
#>
######################################################################
p6_aws_ssm_association_versions_list() {
    local association_id="$1"
    shift 1

    p6_run_read_cmd aws ssm list-association-versions --association-id $association_id "$@"
}