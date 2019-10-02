######################################################################
#<
#
# Function:
#	p6_aws_kinesisanalytics_applications_list()
#
#>
######################################################################
p6_aws_kinesisanalytics_applications_list() {

    p6_run_read_cmd aws kinesisanalytics list-applications "$@"
}