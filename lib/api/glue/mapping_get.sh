######################################################################
#<
#
# Function:
#	p6_aws_glue_mapping_get(source)
#
#  Args:
#	source - 
#
#>
######################################################################
p6_aws_glue_mapping_get() {
    local source="$1"
    shift 1

    p6_run_read_cmd aws glue get-mapping --source $source "$@"
}