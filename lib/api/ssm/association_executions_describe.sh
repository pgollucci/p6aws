######################################################################
#<
#
# Function:
#      = p6_aws_ssm_association_executions_describe(association_id)
#
# Arg(s):
#    association_id - 
#
#
#>
######################################################################
p6_aws_ssm_association_executions_describe() {
    local association_id="$1"
    shift 1

    p6_run_read_cmd aws ssm describe-association-executions --association-id $association_id "$@"
}