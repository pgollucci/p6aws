######################################################################
#<
#
# Function:
#	p6_aws_iotanalytics_datastore_describe(datastore_name)
#
#  Args:
#	datastore_name - 
#
#>
######################################################################
p6_aws_iotanalytics_datastore_describe() {
    local datastore_name="$1"
    shift 1

    p6_run_read_cmd aws iotanalytics describe-datastore --datastore-name $datastore_name "$@"
}