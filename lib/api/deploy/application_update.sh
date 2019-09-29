######################################################################
#<
#
# Function:
#      = p6_aws_deploy_application_update()
#
#
#
#>
######################################################################
p6_aws_deploy_application_update() {

    p6_run_write_cmd aws deploy update-application "$@"
}