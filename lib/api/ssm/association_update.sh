######################################################################
#<
#
# Function:
#      = p6_aws_ssm_association_update(association_id)
#
# Arg(s):
#    association_id - 
#
#
#>
######################################################################
p6_aws_ssm_association_update() {
    local association_id="$1"
    shift 1

    p6_run_write_cmd aws ssm update-association --association-id $association_id "$@"
}