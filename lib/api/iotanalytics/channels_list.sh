######################################################################
#<
#
# Function:
#      = p6_aws_iotanalytics_channels_list()
#
#
#
#>
######################################################################
p6_aws_iotanalytics_channels_list() {

    p6_run_read_cmd aws iotanalytics list-channels "$@"
}