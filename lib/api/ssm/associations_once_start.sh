######################################################################
#<
#
# Function:
#	p6_aws_ssm_associations_once_start(association_ids)
#
#  Args:
#	association_ids - 
#
#>
######################################################################
p6_aws_ssm_associations_once_start() {
    local association_ids="$1"
    shift 1

    p6_run_write_cmd aws ssm start-associations-once --association-ids $association_ids "$@"
}