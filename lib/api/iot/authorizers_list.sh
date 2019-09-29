######################################################################
#<
#
# Function:
#      = p6_aws_iot_authorizers_list()
#
#
#
#>
######################################################################
p6_aws_iot_authorizers_list() {

    p6_run_read_cmd aws iot list-authorizers "$@"
}