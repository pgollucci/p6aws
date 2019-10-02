######################################################################
#<
#
# Function:
#	p6_aws_glue_ml_transform_delete(transform_id)
#
#  Args:
#	transform_id - 
#
#>
######################################################################
p6_aws_glue_ml_transform_delete() {
    local transform_id="$1"
    shift 1

    p6_run_write_cmd aws glue delete-ml-transform --transform-id $transform_id "$@"
}