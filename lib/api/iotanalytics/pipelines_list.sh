######################################################################
#<
#
# Function:
#	p6_aws_iotanalytics_pipelines_list()
#
#>
######################################################################
p6_aws_iotanalytics_pipelines_list() {

    p6_run_read_cmd aws iotanalytics list-pipelines "$@"
}