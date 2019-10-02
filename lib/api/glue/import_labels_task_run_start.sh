######################################################################
#<
#
# Function:
#	p6_aws_glue_import_labels_task_run_start(transform_id, input_s3_path)
#
#  Args:
#	transform_id - 
#	input_s3_path - 
#
#>
######################################################################
p6_aws_glue_import_labels_task_run_start() {
    local transform_id="$1"
    local input_s3_path="$2"
    shift 2

    p6_run_write_cmd aws glue start-import-labels-task-run --transform-id $transform_id --input-s3-path $input_s3_path "$@"
}