######################################################################
#<
#
# Function:
#	p6_aws_cloudhsm_hapg_create(label)
#
#  Args:
#	label - 
#
#>
######################################################################
p6_aws_cloudhsm_hapg_create() {
    local label="$1"
    shift 1

    p6_run_write_cmd aws cloudhsm create-hapg --label $label "$@"
}