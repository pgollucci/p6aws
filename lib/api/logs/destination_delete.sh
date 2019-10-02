######################################################################
#<
#
# Function:
#	p6_aws_logs_destination_delete(destination_name)
#
#  Args:
#	destination_name - 
#
#>
######################################################################
p6_aws_logs_destination_delete() {
    local destination_name="$1"
    shift 1

    p6_run_write_cmd aws logs delete-destination --destination-name $destination_name "$@"
}