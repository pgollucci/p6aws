######################################################################
#<
#
# Function:
#      = p6_aws_iotanalytics_datastore_update(datastore_name)
#
# Arg(s):
#    datastore_name - 
#
#
#>
######################################################################
p6_aws_iotanalytics_datastore_update() {
    local datastore_name="$1"
    shift 1

    p6_run_write_cmd aws iotanalytics update-datastore --datastore-name $datastore_name "$@"
}