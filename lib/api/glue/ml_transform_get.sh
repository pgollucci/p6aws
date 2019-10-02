######################################################################
#<
#
# Function:
#	p6_aws_glue_ml_transform_get(transform_id)
#
#  Args:
#	transform_id - 
#
#>
######################################################################
p6_aws_glue_ml_transform_get() {
    local transform_id="$1"
    shift 1

    p6_run_read_cmd aws glue get-ml-transform --transform-id $transform_id "$@"
}