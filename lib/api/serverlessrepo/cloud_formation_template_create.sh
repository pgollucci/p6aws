######################################################################
#<
#
# Function:
#      = p6_aws_serverlessrepo_cloud_formation_template_create(application_id)
#
# Arg(s):
#    application_id - 
#
#
#>
######################################################################
p6_aws_serverlessrepo_cloud_formation_template_create() {
    local application_id="$1"
    shift 1

    p6_run_write_cmd aws serverlessrepo create-cloud-formation-template --application-id $application_id "$@"
}