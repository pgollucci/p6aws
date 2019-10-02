######################################################################
#<
#
# Function:
#	p6_aws_glue_export_labels_task_run_start(transform_id, output_s3_path)
#
#  Args:
#	transform_id - 
#	output_s3_path - 
#
#>
######################################################################
p6_aws_glue_export_labels_task_run_start() {
    local transform_id="$1"
    local output_s3_path="$2"
    shift 2

    p6_run_write_cmd aws glue start-export-labels-task-run --transform-id $transform_id --output-s3-path $output_s3_path "$@"
}