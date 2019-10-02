######################################################################
#<
#
# Function:
#	p6_aws_iotanalytics_datastore_delete(datastore_name)
#
#  Args:
#	datastore_name - 
#
#>
######################################################################
p6_aws_iotanalytics_datastore_delete() {
    local datastore_name="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics delete-datastore --datastore-name $datastore_name "$@"
}