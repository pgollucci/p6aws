######################################################################
#<
#
# Function:
#	p6_aws_glue_plan_get(mapping, source)
#
#  Args:
#	mapping - 
#	source - 
#
#>
######################################################################
p6_aws_glue_plan_get() {
    local mapping="$1"
    local source="$2"
    shift 2

    p6_run_read_cmd aws glue get-plan --mapping $mapping --source $source "$@"
}