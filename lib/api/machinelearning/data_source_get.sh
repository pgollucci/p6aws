######################################################################
#<
#
# Function:
#	p6_aws_machinelearning_data_source_get(data_source_id)
#
#  Args:
#	data_source_id - 
#
#>
######################################################################
p6_aws_machinelearning_data_source_get() {
    local data_source_id="$1"
    shift 1

    p6_run_read_cmd aws machinelearning get-data-source --data-source-id $data_source_id "$@"
}