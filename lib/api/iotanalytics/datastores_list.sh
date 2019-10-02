######################################################################
#<
#
# Function:
#	p6_aws_iotanalytics_datastores_list()
#
#>
######################################################################
p6_aws_iotanalytics_datastores_list() {

    p6_run_read_cmd aws iotanalytics list-datastores "$@"
}