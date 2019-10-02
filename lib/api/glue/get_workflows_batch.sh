######################################################################
#<
#
# Function:
#	p6_aws_glue_get_workflows_batch(names)
#
#  Args:
#	names - 
#
#>
######################################################################
p6_aws_glue_get_workflows_batch() {
    local names="$1"
    shift 1

    p6_run_read_cmd aws glue batch-get-workflows --names $names "$@"
}