######################################################################
#<
#
# Function:
#      = p6_aws_deploy_on_premises_instances_list()
#
#
#
#>
######################################################################
p6_aws_deploy_on_premises_instances_list() {

    p6_run_read_cmd aws deploy list-on-premises-instances "$@"
}