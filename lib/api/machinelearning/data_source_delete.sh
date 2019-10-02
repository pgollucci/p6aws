######################################################################
#<
#
# Function:
#	p6_aws_machinelearning_data_source_delete(data_source_id)
#
#  Args:
#	data_source_id - 
#
#>
######################################################################
p6_aws_machinelearning_data_source_delete() {
    local data_source_id="$1"
    shift 1

    p6_run_write_cmd aws machinelearning delete-data-source --data-source-id $data_source_id "$@"
}